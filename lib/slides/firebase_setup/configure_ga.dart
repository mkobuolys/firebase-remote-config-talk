import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConfigureGaSlide extends FlutterDeckImageSlide {
  const ConfigureGaSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/configure-ga',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/firebase-setup/configure-ga.png',
        fit: BoxFit.contain,
      );
}
