import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConfigureFirebaseSlide extends FlutterDeckImageSlide {
  const ConfigureFirebaseSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/configure-firebase',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/firebase-setup/configure-firebase.png',
        fit: BoxFit.contain,
      );
}
