import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SplashPageSlide extends FlutterDeckSlideWidget {
  const SplashPageSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/splash-page',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/firebase-conditions/splash-page.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
