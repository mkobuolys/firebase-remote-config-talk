import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RatingTypeServiceSlide extends FlutterDeckBlankSlide {
  const RatingTypeServiceSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rating-type-service',
          ),
        );

  @override
  Widget body(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/ab-testing/rating-type.png',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Image.asset(
              'assets/images/ab-testing/rating-service.png',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
