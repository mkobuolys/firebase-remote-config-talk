import 'package:firebase_remote_config_talk/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FeatureFlaggingTitleSlide extends FlutterDeckBlankSlide {
  const FeatureFlaggingTitleSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/feature-flagging',
          ),
        );

  @override
  Widget body(BuildContext context) {
    return const ChapterView(title: 'Chapter 4', subtitle: 'Feature flagging');
  }
}
