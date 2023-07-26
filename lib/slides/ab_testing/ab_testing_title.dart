import 'package:firebase_remote_config_talk/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AbTestingTitleSlide extends FlutterDeckBlankSlide {
  const AbTestingTitleSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/ab-testing',
          ),
        );

  @override
  Widget body(BuildContext context) {
    return const ChapterView(title: 'Chapter 5', subtitle: 'A/B testing');
  }
}
