import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UseAndroidConditionSlide extends FlutterDeckSlideWidget {
  const UseAndroidConditionSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/use-android-condition',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/firebase-conditions/use-android-condition.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
