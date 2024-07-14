part of 'video_player_bloc.dart';

class VideoPlayerState extends Equatable {
  const VideoPlayerState({
    required this.videoPlayerController,
    required this.videoPlayerUiState,
  });

  final VideoPlayerController videoPlayerController;
  final UIState videoPlayerUiState;

  static initial() => VideoPlayerState(
    videoPlayerController: VideoPlayerController.networkUrl(
      Uri.parse(''),
    ),
    videoPlayerUiState: InitialUiState(),
  );

  VideoPlayerState copyWith({
    VideoPlayerController? videoPlayerController,
    UIState? videoPlayerUiState,
  }) =>
      VideoPlayerState(
        videoPlayerController:
        videoPlayerController ?? this.videoPlayerController,
        videoPlayerUiState: videoPlayerUiState ?? this.videoPlayerUiState,
      );

  @override
  List<Object?> get props => [
    videoPlayerController,
    videoPlayerUiState,
  ];
}

extension VideoPlayerStateX on VideoPlayerState {
  VideoPlayerState onLoadingVideoPlayerUI() =>
      copyWith(videoPlayerUiState: LoadingUIState());

  VideoPlayerState onFailureVideoPlayerUI(String message) =>
      copyWith(videoPlayerUiState: FailureUIState(message));
}