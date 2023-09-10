import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class DailyPunServiceSlide extends FlutterDeckSlideWidget {
  const DailyPunServiceSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/daily-pun-service',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/firebase-parameters/daily-pun-service.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
