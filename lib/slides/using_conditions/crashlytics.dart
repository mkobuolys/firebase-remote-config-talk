import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CrashlyticsSlide extends FlutterDeckImageSlide {
  const CrashlyticsSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/crashlytics',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/firebase-conditions/crashlytics.png',
        fit: BoxFit.contain,
      );

  @override
  String? get label =>
      'Source: https://firebase.google.com/products/crashlytics';
}
