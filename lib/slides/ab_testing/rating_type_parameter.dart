import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RatingTypeParameterSlide extends FlutterDeckImageSlide {
  const RatingTypeParameterSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rating-type-parameter',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/ab-testing/rating-type-parameter.png',
        fit: BoxFit.contain,
      );
}
