import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class LanguageConditionSlide extends FlutterDeckImageSlide {
  const LanguageConditionSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/language-condition',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/firebase-conditions/language-condition.png',
        fit: BoxFit.contain,
      );
}
