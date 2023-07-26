import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RealTimeConfigCodeSlide extends FlutterDeckBlankSlide {
  const RealTimeConfigCodeSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/real-time-config-code',
          ),
        );

  @override
  Widget body(BuildContext context) {
    return Center(
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
    );
  }
}
