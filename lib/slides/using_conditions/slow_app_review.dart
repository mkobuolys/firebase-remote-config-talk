import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SlowAppReviewSlide extends FlutterDeckImageSlide {
  const SlowAppReviewSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/slow-app-review',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/firebase-conditions/slow-app-review.png',
        fit: BoxFit.contain,
      );
}
