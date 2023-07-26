import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RatingEnabledParameterSlide extends FlutterDeckImageSlide {
  const RatingEnabledParameterSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rating-enabled-parameter',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/feature-flagging/staged-rollout-condition.png',
        fit: BoxFit.contain,
      );
}
