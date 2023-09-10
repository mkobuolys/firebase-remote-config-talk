import 'package:firebase_remote_config_talk/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AbTestingTitleSlide extends FlutterDeckSlideWidget {
  const AbTestingTitleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/ab-testing',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const ChapterView(
        title: 'Chapter 5',
        subtitle: 'A/B testing',
      ),
    );
  }
}
