import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PunRatingExperimentSlide extends FlutterDeckImageSlide {
  const PunRatingExperimentSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/pun-rating-experiment',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/ab-testing/pun-rating-experiment.png',
        fit: BoxFit.contain,
      );
}
