import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RatingServiceSlide extends FlutterDeckSlideWidget {
  const RatingServiceSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rating-service',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
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
      ),
    );
  }
}
