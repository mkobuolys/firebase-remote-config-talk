import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AndroidConditionSlide extends FlutterDeckImageSlide {
  const AndroidConditionSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/android-condition',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/firebase-conditions/android-condition.png',
        fit: BoxFit.contain,
      );
}
