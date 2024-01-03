import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SlowUpdateSlide extends FlutterDeckSlideWidget {
  const SlowUpdateSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/slow-update',
            title: 'Slow app update approval',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/firebase-conditions/sloth-slow.gif',
        fit: BoxFit.contain,
      ),
    );
  }
}
