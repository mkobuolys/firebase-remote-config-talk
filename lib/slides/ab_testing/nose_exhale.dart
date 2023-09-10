import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class NoseExhaleSlide extends FlutterDeckSlideWidget {
  const NoseExhaleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/nose-exhale',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/ab-testing/nose-exhale.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
