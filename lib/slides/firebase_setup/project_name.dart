import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ProjectNameSlide extends FlutterDeckSlideWidget {
  const ProjectNameSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/project-name',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/firebase-setup/project-name.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
