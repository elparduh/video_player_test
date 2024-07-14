import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';
import 'package:video_player_test/core/state/ui_state.dart';

part 'video_player_state.dart';
part 'video_player_event.dart';

class VideoPlayerBloc extends Bloc<VideoPlayerEvent, VideoPlayerState> {
  VideoPlayerBloc() : super(VideoPlayerState.initial()) {
    on<PlayVideoEvent>(_onPlayVideo);
  }

  _onPlayVideo(
      PlayVideoEvent event,
      Emitter<VideoPlayerState> emit,
      ) async {
    state.onLoadingVideoPlayerUI();
    await event.videoPlayerController.initialize().then((_) {
      event.videoPlayerController.play();
      emit(
        state.copyWith(
          videoPlayerController: event.videoPlayerController,
          videoPlayerUiState: CompleteUIState(),
        ),
      );
    }).onError((error, stackTrace) {
      emit(state.onFailureVideoPlayerUI(error.toString()));
    });
  }

  onPlayVideo(String url) {
    final controller = VideoPlayerController.networkUrl(Uri.parse(url));
    add(PlayVideoEvent(controller));
  }
}