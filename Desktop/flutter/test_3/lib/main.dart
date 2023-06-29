import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Player',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String _videoUrl = 'https://www.youtube.com/watch?v=RCgZiOVwQYk';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Player'),
      ),
      body: Center(
        child: YoutubePlayerControllerProvider(
          controller: YoutubePlayerController(
            initialVideoId: YoutubePlayerController.convertUrlToId(_videoUrl)!,
            params:const  YoutubePlayerParams(
              showControls: true,
              showFullscreenButton: true,
            ),
          ),
          child:const YoutubePlayerIFrame(),
        ),
      ),
    );
  }
}
