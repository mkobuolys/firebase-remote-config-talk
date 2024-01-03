import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class MainForcesWithoutJokesSlide extends FlutterDeckSlideWidget {
  const MainForcesWithoutJokesSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/main-forces-without-jokes',
            title: 'Two main forces',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/forces/main-forces.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
