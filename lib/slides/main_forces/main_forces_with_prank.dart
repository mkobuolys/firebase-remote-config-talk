import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class MainForcesWithPrankSlide extends FlutterDeckSlideWidget {
  const MainForcesWithPrankSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/main-forces-with-prank',
            title: 'Prank and main forces',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final height = constraints.maxHeight;

            return Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/images/forces/main-forces-final.png',
                  fit: BoxFit.contain,
                  height: height,
                ),
                Positioned(
                  top: height / 2.2,
                  child: Image.asset(
                    'assets/images/prank.png',
                    fit: BoxFit.contain,
                    height: height / 3,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
