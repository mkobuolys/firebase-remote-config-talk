import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FirstAppOpenConditionSlide extends FlutterDeckImageSlide {
  const FirstAppOpenConditionSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/first-app-open-condition',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/firebase-conditions/first-app-open-condition.png',
        fit: BoxFit.contain,
      );
}
