import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class InitializeFirebaseSlide extends FlutterDeckSlideWidget {
  const InitializeFirebaseSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/initialize-firebase',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/firebase-setup/initialize-firebase.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
