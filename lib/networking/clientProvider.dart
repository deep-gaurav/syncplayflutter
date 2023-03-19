import 'dart:async';
import 'dart:developer';

import 'package:artemis/artemis.dart';
import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:syncplayflutter/graphql_api.graphql.dart';

class GameClient extends InheritedWidget {
  final ArtemisClient artemisClient;

  final LocalStorage localStorage;

  final String playerId;

  late final String initialPlayerName =
      localStorage.getItem('player_name') ?? "";

  late final TextEditingController playerName =
      TextEditingController(text: initialPlayerName);

  StreamController<GraphQLResponse<ServerMessages$Subscription>> stream =
      StreamController.broadcast();

  GameClient(
      {Key? key,
      required this.child,
      required this.artemisClient,
      required this.localStorage,
      required this.playerId})
      : super(key: key, child: child);
  @override
  final Widget child;

  static GameClient? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<GameClient>();
  }

  @override
  bool updateShouldNotify(GameClient oldWidget) {
    return true;
  }

  bool isPhone(BuildContext context) {
    return MediaQuery.of(context).size.width < 600;
  }

  Future<String> createRoom() async {
    if (playerName.text.isEmpty) {
      throw "Name empty";
    }
    print("Create room player $playerId");
    localStorage.setItem('player_name', playerName.text);

    var createLobby = CreateLobbyMutation(
      variables: CreateLobbyArguments(
        userId: playerId,
        userName: playerName.text,
        delay_secs: 30,
      ),
    );
    var result = await artemisClient.execute(createLobby);
    var roomId = result.data?.createLobby;
    if (roomId == null) {
      throw "Can not create Room";
    } else {
      return roomId;
    }
  }

  Future<String> joinRoom(String roomId) async {
    if (playerName.text.isEmpty) {
      throw "Name empty";
    }
    var createLobby = JoinLobbyMutation(
      variables: JoinLobbyArguments(
        userId: playerId,
        userName: playerName.text,
        roomId: roomId,
      ),
    );
    print("Joining Room $roomId player $playerId");
    localStorage.setItem('player_name', playerName.text);
    var result = await artemisClient.execute(createLobby);
    print("Inside here!");
    if (result.data?.joinLobby == null) {
      print("Result $result Data ${result.data} Errors ${result.errors}");
      throw "Cannot join Lobby";
    } else {
      return roomId;
    }
  }

  Future disconnect(String roomId) async {
    var disc = await artemisClient.execute(
      DisconnectMutation(
        variables: DisconnectArguments(userId: playerId, roomId: roomId),
      ),
    );
  }

  Future kick(String roomId, String playerId) async {
    await artemisClient.execute(
      DisconnectMutation(
        variables: DisconnectArguments(userId: playerId, roomId: roomId),
      ),
    );
  }

  Future<Stream<GraphQLResponse<ServerMessages$Subscription>>> connect(
      String roomId) async {
    if (playerName.text.isEmpty) {
      throw "Name empty";
    }

    log("Connect to room $roomId playerId $playerId");
    var streamData = artemisClient.stream(
      ServerMessagesSubscription(
        variables: ServerMessagesArguments(
          roomId: roomId,
          userId: playerId,
        ),
      ),
    );
    var completer =
        Completer<Stream<GraphQLResponse<ServerMessages$Subscription>>>();
    bool isFirst = true;
    streamData.listen((event) async {
      if (isFirst) {
        isFirst = false;
        if (event.data != null) {
          completer.complete(stream.stream);
          await Future.delayed(const Duration(milliseconds: 100));
        } else {
          completer.completeError("Cant connect");
          debugPrint("Event $event Data ${event.data} Error ${event.errors}");
        }
      }
      stream.add(event);
    }).onDone(() {
      stream.close();
    });
    return completer.future;
  }
}
