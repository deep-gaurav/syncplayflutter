import 'dart:async';
import 'dart:convert';

import 'package:artemis/schema/graphql_response.dart';
import 'package:chewie/chewie.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:subtitle_wrapper_package/subtitle_wrapper_package.dart';
import 'package:syncplayflutter/graphql_api.graphql.dart';
import 'package:syncplayflutter/networking/clientProvider.dart';
import 'package:syncplayflutter/widgets/chewei_controls.dart';
import 'package:video_player/video_player.dart';

class SyncedVideoPlayer extends StatefulWidget {
  final String roomId;
  final String userId;
  final String videoPath;
  const SyncedVideoPlayer(
      {super.key,
      required this.videoPath,
      required this.roomId,
      required this.userId});

  @override
  State<SyncedVideoPlayer> createState() => _SyncedVideoPlayerState();
}

class _SyncedVideoPlayerState extends State<SyncedVideoPlayer> {
  ChewieController? controller;
  late VideoPlayerController videoPlayerController;

  bool? lastSentPlaying;
  int? lastSentPosition;

  SubtitleController subtitleUrl = SubtitleController(
    subtitlesContent: """""",
    subtitleType: SubtitleType.srt,
  );

  StreamSubscription<GraphQLResponse<ServerMessages$Subscription>>?
      subscription;

  @override
  void initState() {
    videoPlayerController = VideoPlayerController.network(widget.videoPath);

    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        await videoPlayerController.initialize();
        setState(() {
          controller = ChewieController(
            aspectRatio: videoPlayerController.value.aspectRatio,
            videoPlayerController: videoPlayerController,
            additionalOptions: (context) {
              return [
                OptionItem(
                  onTap: () async {
                    var file = await FilePicker.platform.pickFiles(
                      withData: true,
                      type: FileType.any,
                    );
                    setState(() {
                      var data = utf8.decode(file!.files.first.bytes!,
                          allowMalformed: true);
                      subtitleUrl = SubtitleController(
                        subtitlesContent: data,
                        subtitleType: SubtitleType.srt,
                        // subtitlesContent: utf8.decode(file!.files.first.bytes!),
                      );
                    });
                  },
                  iconData: Icons.subtitles,
                  title: "Subtitle",
                )
              ];
            },
            customControls: MaterialWebControls(
              afterSeek: () {
                updateStatus();
              },
            ),
          );
        });
        videoPlayerController.addListener(() {
          if (lastSentPlaying != videoPlayerController.value.isPlaying) {
            updateStatus();
          }
        });

        Timer.periodic(const Duration(seconds: 3), (t) {
          if (!mounted) {
            t.cancel();
            return;
          }
          updateStatus();
        });
        subscription = GameClient.of(context)?.stream.stream.listen(
          (event) async {
            var data = event.data?.serverMessages;
            if (data is ServerMessages$Subscription$ServerResponse$ReadyData) {
              await controller!.seekTo(Duration(seconds: data.positionSecs));
              if (data.playing) {
                controller!.play();
              } else {
                controller!.pause();
              }
            }
          },
        );
      },
    );

    super.initState();
  }

  updateStatus() {
    lastSentPlaying = videoPlayerController.value.isPlaying;
    lastSentPosition = videoPlayerController.value.position.inSeconds;
    GameClient.of(context)!.artemisClient.execute(
          StatusUpdateQuery(
            variables: StatusUpdateArguments(
              isPlaying: lastSentPlaying!,
              positionSecs: lastSentPosition!,
              userId: widget.userId,
              roomId: widget.roomId,
            ),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return controller != null
        ? SubtitleWrapper(
            key: Key(subtitleUrl.hashCode.toString()),
            subtitleStyle: const SubtitleStyle(
                hasBorder: true,
                textColor: Colors.white,
                borderStyle: SubtitleBorderStyle(
                  color: Colors.black,
                )),
            videoPlayerController: controller!.videoPlayerController,
            subtitleController: subtitleUrl,
            videoChild: Chewie(
              key: const Key("chewei"),
              controller: controller!,
            ),
          )
        : const CircularProgressIndicator();
  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }
}
