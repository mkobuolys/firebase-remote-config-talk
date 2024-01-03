import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class MinimumFetchIntervalProblemSlide extends FlutterDeckSlideWidget {
  const MinimumFetchIntervalProblemSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/minimum-fetch-interval-problem',
            title: 'Minimum fetch interval problem',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
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
      ),
    );
  }
}
