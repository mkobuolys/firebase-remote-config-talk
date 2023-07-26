import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class LaughMeterSlide extends FlutterDeckImageSlide {
  const LaughMeterSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/laugh-meter',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/feature-flagging/laugh-meter.jpg',
        fit: BoxFit.contain,
      );
}
