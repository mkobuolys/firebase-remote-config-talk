import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ExperimentResultsSlide extends FlutterDeckImageSlide {
  const ExperimentResultsSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/experiment-results',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/ab-testing/experiment-results.png',
        fit: BoxFit.contain,
      );
}
