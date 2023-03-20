import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncplayflutter/graphql_api.graphql.dart';
import 'package:syncplayflutter/networking/clientProvider.dart';
import 'package:syncplayflutter/screens/lobby.dart';

class Home extends StatefulWidget {
  final String initialRoomId;
  const Home({this.initialRoomId = '', Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController roomIdController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.initialRoomId.isNotEmpty) {
      roomIdController.text = widget.initialRoomId;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(minWidth: 300, maxWidth: 600),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: TextField(
                    controller: GameClient.of(context)?.playerName,
                    decoration: const InputDecoration(
                      labelText: 'Player Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: TextField(
                    textCapitalization: TextCapitalization.characters,
                    inputFormatters: [
                      UpperCaseTextFormatter(),
                    ],
                    controller: roomIdController,
                    decoration: const InputDecoration(
                      labelText: 'Room Id',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                ValueListenableBuilder(
                    valueListenable: roomIdController,
                    builder: (context, value, child) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            textStyle:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 40)),
                        onPressed: () async {
                          try {
                            String? roomId;
                            var gc = GameClient.of(context);
                            var nav = Navigator.of(context);
                            if (roomIdController.text.isEmpty) {
                              roomId = await gc?.createRoom();
                            }
                            roomId = await gc
                                ?.joinRoom(roomId ?? roomIdController.text);

                            if (roomId != null) {
                              var subscription = await gc?.connect(roomId);
                              var firstMessage = await subscription?.firstWhere(
                                (element) => element.data?.serverMessages
                                    is ServerMessages$Subscription$ServerResponse$PlayerConnected,
                              );
                              var room = (firstMessage?.data?.serverMessages
                                      as ServerMessages$Subscription$ServerResponse$PlayerConnected)
                                  .room;
                              nav.push(
                                MaterialPageRoute(
                                  settings: RouteSettings(name: '/$roomId'),
                                  builder: (context) => Room(room: room),
                                ),
                              );
                            }
                          } catch (e) {
                            log("$e");
                          }
                        },
                        child: Text(
                          roomIdController.text.isEmpty
                              ? "Create Lobby"
                              : "Join Lobby",
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
        text: newValue.text.toUpperCase(), selection: newValue.selection);
  }
}
