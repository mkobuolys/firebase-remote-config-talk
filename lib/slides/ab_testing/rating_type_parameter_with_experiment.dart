import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RatingTypeParameterWithExperimentSlide extends FlutterDeckSlideWidget {
  const RatingTypeParameterWithExperimentSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rating-type-parameter-with-experiment',
            title: 'Rating type parameter with experiment',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/ab-testing/rating-type-parameter-with-experiment.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
