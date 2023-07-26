import 'package:firebase_remote_config_talk/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UsingConditionsTitleSlide extends FlutterDeckBlankSlide {
  const UsingConditionsTitleSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/using-conditions',
          ),
        );

  @override
  Widget body(BuildContext context) {
    return const ChapterView(
      title: 'Chapter 3',
      subtitle: 'Using Firebase Remote Config conditions',
    );
  }
}
