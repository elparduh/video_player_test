import 'package:get_it/get_it.dart';
import 'package:video_player_test/video_player/bloc/video_player_bloc.dart';

final _locator = GetIt.instance;

void registerVideoPlayerDependencies() {
  _locator.registerFactory<VideoPlayerBloc>(() => VideoPlayerBloc());
}