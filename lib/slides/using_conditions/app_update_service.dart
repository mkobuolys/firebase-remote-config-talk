import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AppUpdateServiceSlide extends FlutterDeckBlankSlide {
  const AppUpdateServiceSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/app-update-service',
          ),
        );

  @override
  Widget body(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/firebase-conditions/get-app-version.png',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Image.asset(
              'assets/images/firebase-conditions/app-update-service.png',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
