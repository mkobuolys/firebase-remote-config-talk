import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FeedbackSlide extends FlutterDeckSlideWidget {
  const FeedbackSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/feedback',
            title: 'Feedback QR code',
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/feedback-qr.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
