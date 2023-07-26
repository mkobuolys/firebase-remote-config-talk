import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FeedbackSlide extends FlutterDeckImageSlide {
  const FeedbackSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/feedback',
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/feedback-qr.png',
        fit: BoxFit.contain,
      );
}
