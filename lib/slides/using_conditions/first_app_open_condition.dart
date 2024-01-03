import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FirstAppOpenConditionSlide extends FlutterDeckSlideWidget {
  const FirstAppOpenConditionSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/first-app-open-condition',
            title: 'First app open condition',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/firebase-conditions/first-app-open-condition.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
