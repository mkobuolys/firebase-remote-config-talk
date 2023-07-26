import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CreateProjectSlide extends FlutterDeckImageSlide {
  const CreateProjectSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/create-project',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/firebase-setup/create-project.png',
        fit: BoxFit.contain,
      );
}
