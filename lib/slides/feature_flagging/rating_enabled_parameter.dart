import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RatingEnabledParameterSlide extends FlutterDeckSlideWidget {
  const RatingEnabledParameterSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rating-enabled-parameter',
            title: 'Staged rollout condition',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/feature-flagging/staged-rollout-condition.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
