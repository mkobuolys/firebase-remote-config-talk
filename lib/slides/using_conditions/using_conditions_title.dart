import 'package:firebase_remote_config_talk/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UsingConditionsTitleSlide extends FlutterDeckSlideWidget {
  const UsingConditionsTitleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/using-conditions',
            title: 'Chapter 3: Using Firebase Remote Config conditions',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const ChapterView(
        title: 'Chapter 3',
        subtitle: 'Using Firebase Remote Config conditions',
      ),
    );
  }
}
