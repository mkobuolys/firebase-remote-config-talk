import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SlowAppReviewSlide extends FlutterDeckSlideWidget {
  const SlowAppReviewSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/slow-app-review',
            title: 'Slow Apple app review times',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/firebase-conditions/slow-app-review.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
