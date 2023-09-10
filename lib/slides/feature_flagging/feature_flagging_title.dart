import 'package:firebase_remote_config_talk/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FeatureFlaggingTitleSlide extends FlutterDeckSlideWidget {
  const FeatureFlaggingTitleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/feature-flagging',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const ChapterView(
        title: 'Chapter 4',
        subtitle: 'Feature flagging',
      ),
    );
  }
}
