import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RatingEnabledConditionalSlide extends FlutterDeckImageSlide {
  const RatingEnabledConditionalSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rating-enabled-conditional',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/feature-flagging/rating-parameter-conditional.png',
        fit: BoxFit.contain,
      );
}
