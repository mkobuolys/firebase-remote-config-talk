import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RatingServiceSlide extends FlutterDeckBlankSlide {
  const RatingServiceSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rating-service',
          ),
        );

  @override
  Widget body(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/feature-flagging/get-rating-enabled.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: Image.asset(
                    'assets/images/feature-flagging/analytics-service.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Image.asset(
              'assets/images/feature-flagging/rating-service.png',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
