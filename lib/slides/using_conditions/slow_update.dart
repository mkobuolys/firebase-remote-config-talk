import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SlowUpdateSlide extends FlutterDeckImageSlide {
  const SlowUpdateSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/slow-update',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/firebase-conditions/sloth-slow.gif',
        fit: BoxFit.contain,
      );
}
