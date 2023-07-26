import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FirebaseDependenciesSlide extends FlutterDeckImageSlide {
  const FirebaseDependenciesSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/firebase-dependencies',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/firebase-setup/firebase-dependencies.png',
        fit: BoxFit.contain,
      );
}
