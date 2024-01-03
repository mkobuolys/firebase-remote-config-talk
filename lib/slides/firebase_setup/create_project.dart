import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CreateProjectSlide extends FlutterDeckSlideWidget {
  const CreateProjectSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/create-project',
            title: 'Create Firebase project',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/firebase-setup/create-project.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
