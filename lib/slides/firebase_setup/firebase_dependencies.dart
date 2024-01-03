import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FirebaseDependenciesSlide extends FlutterDeckSlideWidget {
  const FirebaseDependenciesSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/firebase-dependencies',
            title: 'Add Firebase dependencies',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/firebase-setup/firebase-dependencies.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
