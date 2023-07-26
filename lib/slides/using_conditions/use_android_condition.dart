import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UseAndroidConditionSlide extends FlutterDeckImageSlide {
  const UseAndroidConditionSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/use-android-condition',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/firebase-conditions/use-android-condition.png',
        fit: BoxFit.contain,
      );
}
