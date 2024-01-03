import 'dart:async';

import 'package:firebase_remote_config_talk/slides/slides.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:record/record.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  unawaited(AudioRecorder().hasPermission());

  runApp(const FlutterFirebaseTalk());
}

class FlutterFirebaseTalk extends StatelessWidget {
  const FlutterFirebaseTalk({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterDeckApp(
      configuration: FlutterDeckConfiguration(
        footer: const FlutterDeckFooterConfiguration(
          showSlideNumbers: true,
          showSocialHandle: true,
        ),
        slideSize: FlutterDeckSlideSize.fromAspectRatio(
          aspectRatio: const FlutterDeckAspectRatio.ratio16x9(),
        ),
        transition: const FlutterDeckTransition.fade(),
      ),
      slides: const [
        IntroSlide(),
        MeetPrankSlide(),
        PracticalJokeSlide(),
        ...mainForcesSlides,
        PunterestLogoSlide(),
        PunterestDemoSlide(),
        ChatWithPrankSlide(),
        ...firebaseSetupSlides,
        ...usingParametersSlides,
        ...usingConditionsSlides,
        ...featureFlaggingSlides,
        ...abTestingSlides,
        SummarySlide(),
        BlogPromoSlide(),
        ThankYouSlide(),
        FeedbackSlide(),
      ],
      speakerInfo: const FlutterDeckSpeakerInfo(
        name: 'Mangirdas Kazlauskas',
        description: 'GDE for Flutter & Dart',
        socialHandle: '@mkobuolys',
        imagePath: 'assets/images/avatar.png',
      ),
    );
  }
}
