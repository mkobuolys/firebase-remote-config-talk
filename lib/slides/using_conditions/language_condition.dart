import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class LanguageConditionSlide extends FlutterDeckSlideWidget {
  const LanguageConditionSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/language-condition',
            title: 'Language condition',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/firebase-conditions/language-condition.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
