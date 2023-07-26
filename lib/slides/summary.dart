import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SummarySlide extends FlutterDeckSplitSlide {
  const SummarySlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/summary',
            steps: 4,
            header: FlutterDeckHeaderConfiguration(title: 'Summary'),
          ),
        );

  @override
  Widget left(BuildContext context) {
    return FlutterDeckBulletList(
      useSteps: true,
      items: const [
        'Parameters',
        'Conditions',
        'Feature flagging',
        'A/B testing',
      ],
    );
  }

  @override
  Widget right(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      color: theme.brightness == Brightness.dark
          ? colorScheme.onBackground
          : colorScheme.background,
      child: Image.asset(
        'assets/images/firebase-logo.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
