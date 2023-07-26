import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class DailyPunServiceSlide extends FlutterDeckImageSlide {
  const DailyPunServiceSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/daily-pun-service',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/firebase-parameters/daily-pun-service.png',
        fit: BoxFit.contain,
      );
}
