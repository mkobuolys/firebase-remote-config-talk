import 'package:firebase_remote_config_talk/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FirebaseSetupTitleSlide extends FlutterDeckBlankSlide {
  const FirebaseSetupTitleSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/firebase-setup',
          ),
        );

  @override
  Widget body(BuildContext context) {
    return const ChapterView(title: 'Chapter 1', subtitle: 'Firebase setup');
  }
}
