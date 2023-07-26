import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class NoseExhaleSlide extends FlutterDeckImageSlide {
  const NoseExhaleSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/nose-exhale',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/ab-testing/nose-exhale.png',
        fit: BoxFit.contain,
      );
}
