import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConfigureFirebaseSlide extends FlutterDeckSlideWidget {
  const ConfigureFirebaseSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/configure-firebase',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/firebase-setup/configure-firebase.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
