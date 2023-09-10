import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class EnableGaSlide extends FlutterDeckSlideWidget {
  const EnableGaSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/enable-ga',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/firebase-setup/enable-ga.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
