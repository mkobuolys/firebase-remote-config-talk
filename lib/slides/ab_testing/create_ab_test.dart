import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

const createAbTestSlides = [
  CreateAbTestSlide(),
  CreateAbTestSlideStep1(),
  CreateAbTestSlideStep2(),
  CreateAbTestSlideStep3(),
  CreateAbTestSlideStep4(),
  CreateAbTestSlideStep5(),
];

class CreateAbTestSlide extends FlutterDeckSlideWidget {
  const CreateAbTestSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/create-ab-test',
            title: 'Create Remote Config experiment',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/ab-testing/create-ab-test.png',
        fit: BoxFit.contain,
      ),
    );
  }
}

class CreateAbTestSlideStep1 extends FlutterDeckSlideWidget {
  const CreateAbTestSlideStep1()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/create-ab-test-step-1',
            title: 'Experiment name',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/ab-testing/create-ab-test-step-1.png',
        fit: BoxFit.contain,
      ),
    );
  }
}

class CreateAbTestSlideStep2 extends FlutterDeckSlideWidget {
  const CreateAbTestSlideStep2()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/create-ab-test-step-2',
            title: 'Experiment targeting',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/ab-testing/create-ab-test-step-2.png',
        fit: BoxFit.contain,
      ),
    );
  }
}

class CreateAbTestSlideStep3 extends FlutterDeckSlideWidget {
  const CreateAbTestSlideStep3()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/create-ab-test-step-3',
            title: 'Experiment goal and metrics',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/ab-testing/create-ab-test-step-3.png',
        fit: BoxFit.contain,
      ),
    );
  }
}

class CreateAbTestSlideStep4 extends FlutterDeckSlideWidget {
  const CreateAbTestSlideStep4()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/create-ab-test-step-4',
            title: 'Experiment variants',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/ab-testing/create-ab-test-step-4.png',
        fit: BoxFit.contain,
      ),
    );
  }
}

class CreateAbTestSlideStep5 extends FlutterDeckSlideWidget {
  const CreateAbTestSlideStep5()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/create-ab-test-step-5',
            title: 'Experiment variant weights',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/ab-testing/create-ab-test-step-5.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
