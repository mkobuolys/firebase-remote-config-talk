import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class DashboardEmptySlide extends FlutterDeckSlideWidget {
  const DashboardEmptySlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/dashboard-empty',
            title: 'Empty Firebase dashboard',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/firebase-setup/dashboard-empty.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
