import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RealTimeConfigCodeSlide extends FlutterDeckSlideWidget {
  const RealTimeConfigCodeSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/real-time-config-code',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: Row(
          children: [
            Expanded(
              child: Image.asset(
                'assets/images/firebase-parameters/on-remote-config-update.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Image.asset(
                'assets/images/firebase-parameters/daily-pun-view.png',
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
