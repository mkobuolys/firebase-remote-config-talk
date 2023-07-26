import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class MinimumFetchIntervalProblemSlide extends FlutterDeckBlankSlide {
  const MinimumFetchIntervalProblemSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/minimum-fetch-interval-problem',
          ),
        );

  @override
  Widget body(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/firebase-parameters/mr-bean-waiting.gif',
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 32),
          Image.asset(
            'assets/images/firebase-parameters/remote-config-settings.png',
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
