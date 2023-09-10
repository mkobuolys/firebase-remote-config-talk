import 'package:firebase_remote_config_talk/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FirebaseSetupTitleSlide extends FlutterDeckSlideWidget {
  const FirebaseSetupTitleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/firebase-setup',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const ChapterView(
        title: 'Chapter 1',
        subtitle: 'Firebase setup',
      ),
    );
  }
}
