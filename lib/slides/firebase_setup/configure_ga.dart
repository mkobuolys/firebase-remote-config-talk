import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConfigureGaSlide extends FlutterDeckSlideWidget {
  const ConfigureGaSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/configure-ga',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/firebase-setup/configure-ga.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
