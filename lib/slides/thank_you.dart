import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ThankYouSlide extends FlutterDeckSlideWidget {
  const ThankYouSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/thank-you',
            title: 'Thank you!',
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.title(
      title: 'Save trees. Stay SOLID. Thank you!',
    );
  }
}
