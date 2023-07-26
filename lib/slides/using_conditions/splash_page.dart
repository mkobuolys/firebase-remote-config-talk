import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SplashPageSlide extends FlutterDeckImageSlide {
  const SplashPageSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/splash-page',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/firebase-conditions/splash-page.png',
        fit: BoxFit.contain,
      );
}
