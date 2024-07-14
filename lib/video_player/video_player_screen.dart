import 'package:flutter/material.dart';
import 'package:video_player_test/core/navigation/navigation.dart';

class VideoPlayerScreen extends StatelessWidget {
  const VideoPlayerScreen({
    super.key,
  });

  static MaterialPageRoute page() => buildMaterialPageRoute(const VideoPlayerScreen());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('VideoPlayerScreen'),
      ),
    );
  }
}