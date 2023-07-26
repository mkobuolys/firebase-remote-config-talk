import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FirebaseServiceInitSlide extends FlutterDeckBlankSlide {
  const FirebaseServiceInitSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/firebase-service-init',
          ),
        );

  @override
  Widget body(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/firebase-parameters/firebase-service-init.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
