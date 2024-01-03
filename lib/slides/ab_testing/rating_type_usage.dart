import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RatingTypeUsageSlide extends FlutterDeckSlideWidget {
  const RatingTypeUsageSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rating-type-usage',
            title: 'Rating type code',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/ab-testing/rating-type-usage.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
