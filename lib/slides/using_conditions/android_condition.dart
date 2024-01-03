import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AndroidConditionSlide extends FlutterDeckSlideWidget {
  const AndroidConditionSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/android-condition',
            title: 'Android platform condition',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/firebase-conditions/android-condition.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
