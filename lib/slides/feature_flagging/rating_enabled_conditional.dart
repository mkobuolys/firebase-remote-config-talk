import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RatingEnabledConditionalSlide extends FlutterDeckSlideWidget {
  const RatingEnabledConditionalSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rating-enabled-conditional',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/feature-flagging/rating-parameter-conditional.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
