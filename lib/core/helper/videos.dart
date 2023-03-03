import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class Videos extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool looping;

  const Videos(
      {super.key, required this.videoPlayerController, required this.looping});

  @override
  State<Videos> createState() => _ChewieListItemState();
}

class _ChewieListItemState extends State<Videos> {
  late ChewieController _chewieController;
  // late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    // flickManager = FlickManager(
    //   videoPlayerController: widget.videoPlayerController,
    // );
    _chewieController = ChewieController(
      aspectRatio: 2,
      videoPlayerController: widget.videoPlayerController,
      autoInitialize: true,
      looping: widget.looping,
      allowFullScreen: false,
      allowedScreenSleep: false,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
    );
    _chewieController.addListener(() {
      if (_chewieController.isFullScreen) {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.landscapeRight,
          DeviceOrientation.landscapeLeft,
        ]);
      } else {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Chewie(
        controller: _chewieController,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    // flickManager.dispose();
    widget.videoPlayerController.dispose();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    _chewieController.dispose();
  }
}
