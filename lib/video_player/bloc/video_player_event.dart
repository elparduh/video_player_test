part of 'video_player_bloc.dart';

sealed class VideoPlayerEvent extends Equatable {
  const VideoPlayerEvent();

  @override
  List<Object> get props => [];
}

final class PlayVideoEvent extends VideoPlayerEvent {
  const PlayVideoEvent(this.videoPlayerController);

  final VideoPlayerController videoPlayerController;
}