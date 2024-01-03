import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PracticalJokeSlide extends FlutterDeckSlideWidget {
  const PracticalJokeSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/practical-joke',
            title: 'Practical joke',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/practical-joke.jpg',
        fit: BoxFit.contain,
      ),
    );
  }
}
