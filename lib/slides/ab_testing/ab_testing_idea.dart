import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AbTestingIdeaSlide extends FlutterDeckImageSlide {
  const AbTestingIdeaSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/ab-testing-idea',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/ab-testing/ab-testing.png',
        fit: BoxFit.contain,
      );

  @override
  String? get label =>
      'Source: https://firebase.google.com/products/remote-config';
}
