import 'dart:async';
import 'dart:developer';

import 'package:artemis/artemis.dart';
import 'package:flutter/material.dart';
import 'package:gql_websocket_link/gql_websocket_link.dart';
import 'package:localstorage/localstorage.dart';
import 'package:syncplayflutter/graphql_api.graphql.dart';
import 'package:syncplayflutter/networking/clientProvider.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'screens/home.dart';
import 'widgets/ping_indicator.dart';

void main() async {
  var playerId = const Uuid().v4();
  final storage = LocalStorage('storage', null, {'player_id': playerId});
  await storage.ready;
  playerId = storage.getItem('player_id') ?? playerId;
  setPathUrlStrategy();
  runApp(
    MyApp(
      storage: storage,
      playerId: playerId,
    ),
  );
}

class MyApp extends StatefulWidget {
  final LocalStorage storage;
  final String playerId;
  const MyApp({super.key, required this.storage, required this.playerId});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  ArtemisClient client = ArtemisClient.fromLink(
    WebSocketLink(
      null,
      channelGenerator: () => WebSocketChannel.connect(
        Uri.parse(
          const String.fromEnvironment(
            'BACKEND_URL',
            defaultValue: 'wss://syncplay.deepwith.in/ws',
          ),
          // 'ws://localhost:8000/',
        ),
        protocols: ['graphql-ws'],
      ),
    ),
  );

  var ping = ValueNotifier<int?>(null);

  @override
  void initState() {
    super.initState();

    pingLoop();
  }

  pingLoop() async {
    while (true) {
      await Future.delayed(const Duration(seconds: 1));
      var tim = DateTime.now();
      try {
        await client.execute(PingQuery()).timeout(const Duration(seconds: 5));
        var cping = DateTime.now().difference(tim);
        // print("Ping ${cping.inMilliseconds}ms");
        ping.value = cping.inMilliseconds;
      } catch (e) {
        ping.value = null;
        log('Error $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GameClient(
      localStorage: widget.storage,
      playerId: widget.playerId,
      artemisClient: client,
      child: MaterialApp(
        title: 'Bingo Tingo',
        routes: {
          '/': (context) => const Home(),
        },
        builder: (context, child) {
          return Stack(
            children: [
              if (child != null) child,
              Positioned(
                right: 10,
                top: 10,
                child: PingIndicator(
                  ping: ping,
                ),
              ),
            ],
          );
        },
        onGenerateRoute: (settings) {
          var reg = RegExp(r'\/(\w+)');
          log("Room Path ${settings.name}");
          var roomId = reg.firstMatch(settings.name ?? '');
          if (roomId != null) {
            log("RoomId ${roomId.group(0)}");
            return MaterialPageRoute(
              builder: (context) => Home(
                key: Key(roomId.group(1) ?? ''),
                initialRoomId: roomId.group(1) ?? '',
              ),
            );
          }
          return null;
        },
        theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: 'Lato',
          brightness: Brightness.dark,
        ),
      ),
    );
  }
}
