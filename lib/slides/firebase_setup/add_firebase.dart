import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AddFirebaseSlide extends FlutterDeckSlideWidget {
  const AddFirebaseSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/add-firebase',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/firebase-setup/add-firebase.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
