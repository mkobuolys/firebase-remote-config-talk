import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class LaughMeterSlide extends FlutterDeckSlideWidget {
  const LaughMeterSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/laugh-meter',
            title: 'Laugh-o-meter',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/feature-flagging/laugh-meter.jpg',
        fit: BoxFit.contain,
      ),
    );
  }
}
