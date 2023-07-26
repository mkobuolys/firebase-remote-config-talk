import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class EnableGaSlide extends FlutterDeckImageSlide {
  const EnableGaSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/enable-ga',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/firebase-setup/enable-ga.png',
        fit: BoxFit.contain,
      );
}
