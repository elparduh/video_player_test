import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';
import 'package:video_player_test/core/di/service_locator.dart';
import 'package:video_player_test/core/navigation/navigation.dart';
import 'package:video_player_test/core/state/ui_state.dart';
import 'package:video_player_test/video_player/bloc/video_player_bloc.dart';

class VideoPlayerScreen extends StatelessWidget {
  const VideoPlayerScreen({
    super.key,
  });

  static MaterialPageRoute page() =>
      buildMaterialPageRoute(const VideoPlayerScreen());

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<VideoPlayerBloc>()..onPlayVideo('https://firebasestorage.googleapis.com/v0/b/mrchordapp-34f1d.appspot.com/o/IMG_2962.MOV?alt=media&token=d12c4455-dd5e-4e8b-8255-17c446794d7f'),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Video player'),
        ),
        body: const SafeArea(
          child: Center(
            child: _VideoView(),
          ),
        ),
      ),
    );
  }
}

class _VideoView extends StatelessWidget {
  const _VideoView();

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 100),
      child: AspectRatio(
        aspectRatio: 9 / 16,
        child: BlocBuilder<VideoPlayerBloc, VideoPlayerState>(
          builder: (context, state) {
            switch (state.videoPlayerUiState) {
              case InitialUiState() || LoadingUIState():
                return const Center(
                  child: CircularProgressIndicator(),
                );
              case CompleteUIState():
                return VideoPlayer(state.videoPlayerController);
              case FailureUIState(error: String message):
                return Center(
                  child: Text(message),
                );
              default:
                return const Center(
                  child: Text(""),
                );
            }
          },
        ),
      ),
    );
  }
}
