import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class DateTimeConditionSlide extends FlutterDeckSlideWidget {
  const DateTimeConditionSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/date-time-condition',
            title: 'Date and time condition',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/firebase-conditions/date-time-condition.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
