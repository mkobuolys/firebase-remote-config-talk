import 'package:firebase_remote_config_talk/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UsingParametersTitleSlide extends FlutterDeckBlankSlide {
  const UsingParametersTitleSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/using-parameters',
          ),
        );

  @override
  Widget body(BuildContext context) {
    return const ChapterView(
      title: 'Chapter 2',
      subtitle: 'Using Firebase Remote Config parameters',
    );
  }
}
