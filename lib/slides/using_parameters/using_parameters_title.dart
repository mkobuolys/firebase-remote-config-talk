import 'package:firebase_remote_config_talk/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UsingParametersTitleSlide extends FlutterDeckSlideWidget {
  const UsingParametersTitleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/using-parameters',
            title: 'Chapter 2: Using Firebase Remote Config parameters',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const ChapterView(
        title: 'Chapter 2',
        subtitle: 'Using Firebase Remote Config parameters',
      ),
    );
  }
}
