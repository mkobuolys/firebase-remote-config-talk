import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class DashboardEmptySlide extends FlutterDeckImageSlide {
  const DashboardEmptySlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/dashboard-empty',
          ),
        );

  @override
  Image get image => Image.asset(
        'assets/images/firebase-setup/dashboard-empty.png',
        fit: BoxFit.contain,
      );
}
