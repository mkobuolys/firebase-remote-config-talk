import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FirebaseRolloutPreviewSlide extends FlutterDeckSlideWidget {
  const FirebaseRolloutPreviewSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/firebase-rollout-preview',
            title: 'Firebase Rollout feature preview',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/feature-flagging/firebase-rollout-preview.png',
        fit: BoxFit.contain,
      ),
      label: 'How to release safely and reduce risk with Remote Config and '
          'Crashlytics - Firebase Demo Day 2023',
    );
  }
}
