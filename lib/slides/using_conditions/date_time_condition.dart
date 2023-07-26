import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class DateTimeConditionSlide extends FlutterDeckImageSlide {
  const DateTimeConditionSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/date-time-condition',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/firebase-conditions/date-time-condition.png',
        fit: BoxFit.contain,
      );
}
