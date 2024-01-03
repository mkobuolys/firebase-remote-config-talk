import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CrossPlatformPtsdSlide extends FlutterDeckSlideWidget {
  const CrossPlatformPtsdSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/cross-platform-ptsd',
            title: 'Cross-platform PTSD',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
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
              style: FlutterDeckTheme.of(context).textTheme.title,
            ),
          ],
        ),
      ),
    );
  }
}
