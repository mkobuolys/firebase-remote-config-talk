import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ExperimentResultsSlide extends FlutterDeckSlideWidget {
  const ExperimentResultsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/experiment-results',
            title: 'A/B testing results',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/ab-testing/experiment-results.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
