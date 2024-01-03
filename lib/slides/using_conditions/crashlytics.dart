import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CrashlyticsSlide extends FlutterDeckSlideWidget {
  const CrashlyticsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/crashlytics',
            title: 'Crashlytics',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/firebase-conditions/crashlytics.png',
        fit: BoxFit.contain,
      ),
      label: 'Source: https://firebase.google.com/products/crashlytics',
    );
  }
}
