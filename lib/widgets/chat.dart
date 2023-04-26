import 'dart:async';

import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncplayflutter/graphql_api.graphql.dart';
import 'package:syncplayflutter/networking/clientProvider.dart';

class ChatWidget extends StatefulWidget {
  final Widget child;
  final String roomId;
  const ChatWidget({required this.child, required this.roomId, Key? key})
      : super(key: key);

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  var pos = const Offset(0, 0);

  List<ServerMessages$Subscription$ServerResponse$ChatMessage> chatMessages =
      [];

  late Timer t;
  ServerMessages$Subscription$ServerResponse$ChatMessage? msg;
  bool hiddenRecent = true;

  @override
  void initState() {
    super.initState();
    t = Timer(const Duration(seconds: 3), () {
      hiddenRecent = true;
    });

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      GameClient.of(context)!.stream.stream.listen(
        (event) {
          if (event.data?.serverMessages
              is ServerMessages$Subscription$ServerResponse$ChatMessage) {
            var data = event.data?.serverMessages
                as ServerMessages$Subscription$ServerResponse$ChatMessage;
            if (mounted) {
              setState(() {
                chatMessages.add(data);
                msg = data;
                t.cancel();
                hiddenRecent = false;
                t = Timer(const Duration(seconds: 3), () {
                  hiddenRecent = true;
                });
              });
            }
          }
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return CallbackShortcuts(
      bindings: {
        const SingleActivator(LogicalKeyboardKey.space, control: true): () {
          Navigator.of(context).push(
            PageRouteBuilder(
              opaque: false,
              barrierColor: Colors.black.withOpacity(0.7),
              barrierDismissible: true,
              pageBuilder: (context, _, __) => ChatWindow(
                roomId: widget.roomId,
                chatMessages: chatMessages,
              ),
            ),
          );
        }
      },
      child: Focus(
        autofocus: true,
        child: Stack(
          children: [
            widget.child,
            StatefulBuilder(builder: (context, setState2) {
              return AnimatedPositioned(
                duration: const Duration(
                  milliseconds: 200,
                ),
                curve: Curves.ease,
                top: pos.dy,
                left: pos.dx,
                child: GestureDetector(
                  onPanUpdate: (details) {
                    setState2(() {
                      pos += details.delta;
                    });
                  },
                  onPanCancel: () {
                    setState2(() {
                      if (pos.dx > MediaQuery.of(context).size.width / 2) {
                        pos = Offset(
                            MediaQuery.of(context).size.width - 60, pos.dy);
                      } else {
                        pos = Offset(10, pos.dy);
                      }
                    });
                  },
                  onPanEnd: (details) {
                    setState2(() {
                      if (pos.dx > MediaQuery.of(context).size.width / 2) {
                        pos = Offset(
                            MediaQuery.of(context).size.width - 60, pos.dy);
                      } else {
                        pos = Offset(10, pos.dy);
                      }
                    });
                  },
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          opaque: false,
                          barrierColor: Colors.black.withOpacity(0.7),
                          barrierDismissible: true,
                          pageBuilder: (context, _, __) => ChatWindow(
                            roomId: widget.roomId,
                            chatMessages: chatMessages,
                          ),
                        ),
                      );
                    },
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        const ChatBubbleWidget(),
                        if (msg != null)
                          Positioned(
                            left: pos.dx > MediaQuery.of(context).size.width / 2
                                ? null
                                : 40,
                            right:
                                pos.dx > MediaQuery.of(context).size.width / 2
                                    ? 50
                                    : null,
                            child: AnimatedOpacity(
                              opacity: hiddenRecent ? 0 : 1,
                              duration: const Duration(seconds: 1),
                              child: Container(
                                child: BubbleSpecialTwo(
                                  text: msg!.message,
                                  isSender: false,
                                  tail: false,
                                ),
                              ),
                            ),
                          )
                      ],
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}

class ChatWindow extends StatefulWidget {
  final String roomId;
  final List<ServerMessages$Subscription$ServerResponse$ChatMessage>
      chatMessages;
  const ChatWindow({
    required this.roomId,
    required this.chatMessages,
    Key? key,
  }) : super(key: key);

  @override
  State<ChatWindow> createState() => _ChatWindowState();
}

class _ChatWindowState extends State<ChatWindow> {
  List<ServerMessages$Subscription$ServerResponse$ChatMessage> chatMessages =
      [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      GameClient.of(context)!.stream.stream.listen(
        (event) {
          if (event.data?.serverMessages
              is ServerMessages$Subscription$ServerResponse$ChatMessage) {
            var data = event.data?.serverMessages
                as ServerMessages$Subscription$ServerResponse$ChatMessage;
            if (mounted) {
              setState(() {
                chatMessages.add(data);
              });
            }
          }
        },
      );
    });

    chatMessages.addAll(widget.chatMessages);
  }

  TextEditingController controller = TextEditingController();
  sendChat() async {
    var nav = Navigator.of(context);
    if (controller.text.trim().isNotEmpty) {
      var result = await GameClient.of(context)!.artemisClient.execute(
            ChatMutation(
              variables: ChatArguments(
                userId: GameClient.of(context)!.playerId,
                roomId: widget.roomId,
                message: controller.text.trim(),
              ),
            ),
          );
      if (!result.hasErrors) {
        controller.clear();
        FocusManager.instance.primaryFocus?.unfocus();
        nav.pop();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.6),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const ChatBubbleWidget(),
                Expanded(
                  child: Dialog(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 10),
                        Expanded(
                          child: Container(
                            child: ListView(
                              reverse: true,
                              children: [
                                ...List.generate(chatMessages.length, (i) => i)
                                    .map(
                                      (i) {
                                        var e = chatMessages[i];
                                        var showName = true;
                                        if (i > 1) {
                                          if (chatMessages[i - 1].player.id ==
                                              chatMessages[i].player.id) {
                                            showName = false;
                                          }
                                        }
                                        return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            if (e.player.id !=
                                                    GameClient.of(context)!
                                                        .playerId &&
                                                showName)
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    left: 20, right: 20),
                                                child: Text(
                                                  e.player.name,
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                            BubbleNormal(
                                              color: e.color != null
                                                  ? HexColor.fromHex(e.color!)
                                                  : Colors.white70,
                                              text: e.message,
                                              isSender: e.player.id ==
                                                  GameClient.of(context)!
                                                      .playerId,
                                            ),
                                          ],
                                        );
                                      },
                                    )
                                    .toList()
                                    .reversed
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        IntrinsicHeight(
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    maxHeight: 100,
                                  ),
                                  child: TextField(
                                    controller: controller,
                                    autofocus: true,
                                    autocorrect: true,
                                    maxLines: null,
                                    textInputAction: TextInputAction.go,
                                    onSubmitted: (value) {
                                      sendChat();
                                    },
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Message',
                                    ),
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  sendChat();
                                },
                                iconSize: 20,
                                padding: const EdgeInsets.all(2),
                                icon: const Icon(Icons.send),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChatBubbleWidget extends StatelessWidget {
  const ChatBubbleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'chat',
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.chat_bubble),
      ),
    );
  }
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
