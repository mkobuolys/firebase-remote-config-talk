import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PunterestLogoSlide extends FlutterDeckSlideWidget {
  const PunterestLogoSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/punterest',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/punterest-logo.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
