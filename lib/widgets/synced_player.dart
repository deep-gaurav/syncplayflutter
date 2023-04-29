import 'dart:async';

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

  String? subtitleUrl;

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
                      withData: false,
                      type: FileType.any,
                    );
                    setState(() {
                      subtitleUrl = file?.files.first.path;
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
            videoPlayerController: controller!.videoPlayerController,
            subtitleController: SubtitleController(
              subtitleUrl: subtitleUrl,
              subtitleType: SubtitleType.srt,
            ),
            videoChild: Chewie(
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
