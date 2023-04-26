import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import 'package:syncplayflutter/graphql_api.graphql.dart';
import 'package:syncplayflutter/networking/clientProvider.dart';
import 'package:syncplayflutter/widgets/chat.dart';
import 'package:syncplayflutter/widgets/synced_player.dart';
import 'package:syncplayflutter/mock_fullscreen.dart'
    if (dart.library.html) 'package:syncplayflutter/fullscreen_web.dart';

class Room extends StatefulWidget {
  final RoomFieldsMixin room;
  const Room({Key? key, required this.room}) : super(key: key);

  @override
  State<Room> createState() => _RoomState();
}

class _RoomState extends State<Room> {
  String? selectedVideo;

  @override
  void initState() {
    isFullScreen.addListener(
      () {
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        appBar: isFullScreen.value
            ? null
            : AppBar(
                automaticallyImplyLeading: false,
                title: Stack(
                    alignment: AlignmentDirectional.centerStart,
                    children: [
                      Positioned(
                          child: Opacity(
                        opacity: 0.8,
                        child: InkWell(
                          onTap: () => {
                            Share.share(kIsWeb
                                ? "Join me for video session at : ${Uri.base}"
                                : widget.room.id)
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(5)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(right: 3),
                                    child: Icon(Icons.add,
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.color,
                                        size: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.fontSize)),
                                Text("Invite",
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                    overflow: TextOverflow.visible),
                              ],
                            ),
                          ),
                        ),
                      )),
                      Center(
                        child: InkWell(
                          onTap: () => Clipboard.setData(ClipboardData(
                                  text: widget.room.id.toString()))
                              .then((value) =>
                                  showSnack(context, "Copied Room Code!")),
                          child: Text(
                            "Room ${widget.room.id}",
                            style: Theme.of(context).textTheme.titleLarge,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ]),
              ),
        body: SafeArea(
          child: ChatWidget(
            roomId: widget.room.id,
            child: Container(
              // margin: const EdgeInsets.all(20),
              child: selectedVideo != null
                  ? SyncedVideoPlayer(
                      videoPath: selectedVideo!,
                      roomId: widget.room.id,
                      userId: GameClient.of(context)!.playerId,
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        if (selectedVideo == null)
                          Center(
                            child: ElevatedButton(
                              child: const Text("Pick Video"),
                              onPressed: () async {
                                var file = await FilePicker.platform.pickFiles(
                                  withData: false,
                                  type: FileType.video,
                                );
                                setState(() {
                                  selectedVideo = file?.files.first.path;
                                });
                              },
                            ),
                          )
                        else
                          SyncedVideoPlayer(
                            videoPath: selectedVideo!,
                            roomId: widget.room.id,
                            userId: GameClient.of(context)!.playerId,
                          )
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }

  ScaffoldFeatureController showSnack(BuildContext context, String text) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(text)));
  }
}
