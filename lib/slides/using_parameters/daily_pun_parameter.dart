import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class DailyPunParameterSlide extends FlutterDeckBlankSlide {
  const DailyPunParameterSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/daily-pun-parameter',
          ),
        );

  @override
  Widget body(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(
              'assets/images/firebase-parameters/daily-pun-parameter.png',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 3,
            child: Image.asset(
              'assets/images/firebase-parameters/daily-pun-json.png',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
