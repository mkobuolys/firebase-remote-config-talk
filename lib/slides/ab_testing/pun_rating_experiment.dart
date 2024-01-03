import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PunRatingExperimentSlide extends FlutterDeckSlideWidget {
  const PunRatingExperimentSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/pun-rating-experiment',
            title: 'Pun rating experiment start',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/ab-testing/pun-rating-experiment.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
