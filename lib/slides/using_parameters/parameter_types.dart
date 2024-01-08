import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ParameterTypesSlide extends FlutterDeckSlideWidget {
  const ParameterTypesSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/parameter-types',
            title: 'Firebase parameter types',
            steps: 2,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const _Content(),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlideStepsBuilder(
      builder: (context, stepNumber) => Center(
        child: Image.asset(
          stepNumber == 1
              ? 'assets/images/firebase-parameters/parameter-types.png'
              : 'assets/images/firebase-parameters/remote-config-json.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
