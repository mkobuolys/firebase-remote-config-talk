import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AddFirebaseSlide extends FlutterDeckImageSlide {
  const AddFirebaseSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/add-firebase',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/firebase-setup/add-firebase.png',
        fit: BoxFit.contain,
      );
}
