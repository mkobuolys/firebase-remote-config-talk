import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ProjectNameSlide extends FlutterDeckImageSlide {
  const ProjectNameSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/project-name',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/firebase-setup/project-name.png',
        fit: BoxFit.contain,
      );
}
