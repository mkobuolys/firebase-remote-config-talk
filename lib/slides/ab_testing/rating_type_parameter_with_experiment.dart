import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RatingTypeParameterWithExperimentSlide extends FlutterDeckImageSlide {
  const RatingTypeParameterWithExperimentSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rating-type-parameter-with-experiment',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/ab-testing/rating-type-parameter-with-experiment.png',
        fit: BoxFit.contain,
      );
}
