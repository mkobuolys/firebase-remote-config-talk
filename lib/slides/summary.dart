import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SummarySlide extends FlutterDeckSlideWidget {
  const SummarySlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/summary',
            header: FlutterDeckHeaderConfiguration(title: 'Summary'),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) => FlutterDeckBulletList(
        items: const [
          'Parameters',
          'Conditions',
          'Feature flagging',
          'A/B testing',
        ],
      ),
      rightBuilder: (context) {
        final colorScheme = Theme.of(context).colorScheme;

        return Card(
          color: Theme.of(context).brightness == Brightness.dark
              ? colorScheme.onBackground
              : colorScheme.background,
          child: Image.asset(
            'assets/images/firebase-logo.png',
            fit: BoxFit.contain,
          ),
        );
      },
    );
  }
}
