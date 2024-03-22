import 'package:injectable/injectable.dart';
import 'package:vibration/vibration.dart';

@singleton
class VibrationsService {
  vibrate(
      {int duration = 500,
      List<int> pattern = const [],
      List<int> intensities = const [],
      int amplitude = 1}) async {
    if (await Vibration.hasVibrator() ?? false) {
      Vibration.vibrate(
          duration: duration,
          pattern: pattern,
          intensities: intensities,
          amplitude: amplitude);
    }
  }
}
