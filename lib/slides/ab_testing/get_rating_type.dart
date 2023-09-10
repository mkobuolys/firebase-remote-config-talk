import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class GetRatingTypeSlide extends FlutterDeckSlideWidget {
  const GetRatingTypeSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/get-rating-type',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/ab-testing/get-rating-type.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
