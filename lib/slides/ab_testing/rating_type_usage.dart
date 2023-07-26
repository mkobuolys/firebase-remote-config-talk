import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RatingTypeUsageSlide extends FlutterDeckImageSlide {
  const RatingTypeUsageSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rating-type-usage',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/ab-testing/rating-type-usage.png',
        fit: BoxFit.contain,
      );
}
