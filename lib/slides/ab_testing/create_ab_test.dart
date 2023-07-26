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

class CreateAbTestSlide extends FlutterDeckImageSlide {
  const CreateAbTestSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/create-ab-test',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/ab-testing/create-ab-test.png',
        fit: BoxFit.contain,
      );
}

class CreateAbTestSlideStep1 extends FlutterDeckImageSlide {
  const CreateAbTestSlideStep1({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/create-ab-test-step-1',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/ab-testing/create-ab-test-step-1.png',
        fit: BoxFit.contain,
      );
}

class CreateAbTestSlideStep2 extends FlutterDeckImageSlide {
  const CreateAbTestSlideStep2({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/create-ab-test-step-2',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/ab-testing/create-ab-test-step-2.png',
        fit: BoxFit.contain,
      );
}

class CreateAbTestSlideStep3 extends FlutterDeckImageSlide {
  const CreateAbTestSlideStep3({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/create-ab-test-step-3',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/ab-testing/create-ab-test-step-3.png',
        fit: BoxFit.contain,
      );
}

class CreateAbTestSlideStep4 extends FlutterDeckImageSlide {
  const CreateAbTestSlideStep4({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/create-ab-test-step-4',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/ab-testing/create-ab-test-step-4.png',
        fit: BoxFit.contain,
      );
}

class CreateAbTestSlideStep5 extends FlutterDeckImageSlide {
  const CreateAbTestSlideStep5({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/create-ab-test-step-5',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/ab-testing/create-ab-test-step-5.png',
        fit: BoxFit.contain,
      );
}
