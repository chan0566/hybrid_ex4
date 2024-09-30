import 'dart:io';
import 'dart:math';

class Lucky {
  late int luckyNumber;

  Lucky() {
    String? minString = Platform.environment['MIN'];
    String? maxString = Platform.environment['MAX'];

    if (minString != null && maxString != null) {
      int minValue = int.parse(minString);
      int maxValue = int.parse(maxString);

      luckyNumber = _generateRandomNumber(minValue, maxValue);
    } else {
      print('MIN and MAX not found');
      luckyNumber = 0;
    }
  }

  int _generateRandomNumber(int minValue, int maxValue) {
    final _random = Random();
    return minValue + _random.nextInt(maxValue - minValue + 1);
  }
}
