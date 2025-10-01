import 'package:flutter/material.dart';
import 'package:tentativa/Paginaum.dart';
import 'package:video_player/video_player.dart';
import 'main.dart';

class VideoInicial extends StatefulWidget {
  @override
  _VideoSplashScreenState createState() => _VideoSplashScreenState();
}

class _VideoSplashScreenState extends State<VideoInicial> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset("assets/Intro.mp4")
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(false);

        // quando o vídeo acabar -> ir para PaginaInicial, não devo me esquecer, essa é a parte do codigo que estou a esquecer sempre
        _controller.addListener(() {
          if (_controller.value.position >= _controller.value.duration) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => Paginaum()),
            );
          }
        });

        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        )
            : CircularProgressIndicator(),
      ),
    );
  }
}
