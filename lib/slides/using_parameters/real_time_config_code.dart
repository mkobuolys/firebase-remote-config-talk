import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RealTimeConfigCodeSlide extends FlutterDeckSlideWidget {
  const RealTimeConfigCodeSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/real-time-config-code',
            title: 'Real-time config code',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/firebase-parameters/on-remote-config-update.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
