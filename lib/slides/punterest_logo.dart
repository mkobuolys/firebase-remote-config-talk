import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PunterestLogoSlide extends FlutterDeckImageSlide {
  const PunterestLogoSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/punterest',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/punterest-logo.png',
        fit: BoxFit.contain,
      );
}
