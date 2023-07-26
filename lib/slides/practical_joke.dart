import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PracticalJokeSlide extends FlutterDeckImageSlide {
  const PracticalJokeSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/practical-joke',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/practical-joke.jpg',
        fit: BoxFit.contain,
      );
}
