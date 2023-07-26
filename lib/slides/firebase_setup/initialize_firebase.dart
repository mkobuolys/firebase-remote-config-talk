import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class InitializeFirebaseSlide extends FlutterDeckImageSlide {
  const InitializeFirebaseSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/initialize-firebase',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/firebase-setup/initialize-firebase.png',
        fit: BoxFit.contain,
      );
}
