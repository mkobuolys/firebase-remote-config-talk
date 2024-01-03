import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AbTestingIdeaSlide extends FlutterDeckSlideWidget {
  const AbTestingIdeaSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/ab-testing-idea',
            title: 'A/B testing idea',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/ab-testing/ab-testing.png',
        fit: BoxFit.contain,
      ),
      label: 'Source: https://firebase.google.com/products/remote-config',
    );
  }
}
