import 'package:get_it/get_it.dart';
import 'package:video_player_test/video_player/di/video_player_locator.dart';

final locator = GetIt.instance;

void initializeLocator() {
  registerVideoPlayerDependencies();
}