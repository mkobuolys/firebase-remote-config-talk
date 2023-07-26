import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class MainForcesWithoutJokesSlide extends FlutterDeckImageSlide {
  const MainForcesWithoutJokesSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/main-forces-without-jokes',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/forces/main-forces.png',
        fit: BoxFit.contain,
      );
}
