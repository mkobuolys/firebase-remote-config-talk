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
      configuration: const FlutterDeckConfiguration(
        background: FlutterDeckBackgroundConfiguration(
          dark: FlutterDeckBackground.custom(child: _Background()),
          light: FlutterDeckBackground.custom(child: _Background()),
        ),
        footer: FlutterDeckFooterConfiguration(
          showSlideNumbers: true,
          showSocialHandle: true,
        ),
        transition: FlutterDeckTransition.fade(),
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

class _Background extends StatelessWidget {
  const _Background();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Padding(
        padding: const EdgeInsets.only(bottom: 48, right: 16),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            'assets/images/devfest-logo.png',
            width: constraints.maxWidth / 15,
          ),
        ),
      ),
    );
  }
}
