import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CrossPlatformPtsdSlide extends FlutterDeckBlankSlide {
  const CrossPlatformPtsdSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/cross-platform-ptsd',
          ),
        );

  @override
  Widget body(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Card(
              color: Theme.of(context).colorScheme.onBackground,
              child: Image.asset(
                'assets/images/feature-flagging/cross-platform-ptsd.jpeg',
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 32),
          Text(
            'Cross-platform PTSD',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ],
      ),
    );
  }
}
