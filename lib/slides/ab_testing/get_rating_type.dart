import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class GetRatingTypeSlide extends FlutterDeckImageSlide {
  const GetRatingTypeSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/get-rating-type',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/ab-testing/get-rating-type.png',
        fit: BoxFit.contain,
      );
}
