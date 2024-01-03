import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FirebaseServiceInitSlide extends FlutterDeckSlideWidget {
  const FirebaseServiceInitSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/firebase-service-init',
            title: 'Initialize Firebase service',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: Image.asset(
          'assets/images/firebase-parameters/firebase-service-init.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
