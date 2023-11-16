import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AppUpdateServiceSlide extends FlutterDeckSlideWidget {
  const AppUpdateServiceSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/app-update-service',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/firebase-conditions/app-update-service.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
