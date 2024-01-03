import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RatingTypeParameterSlide extends FlutterDeckSlideWidget {
  const RatingTypeParameterSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rating-type-parameter',
            title: 'Rating type parameter',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/ab-testing/rating-type-parameter.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
