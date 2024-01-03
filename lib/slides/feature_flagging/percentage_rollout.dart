import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PercentageRolloutSlide extends FlutterDeckSlideWidget {
  const PercentageRolloutSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/percentage-rollout',
            title: 'Staged rollout',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) {
        final colorScheme = Theme.of(context).colorScheme;

        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Card(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? colorScheme.onBackground
                      : colorScheme.background,
                  child: Image.asset(
                    'assets/images/feature-flagging/percentage-rollout.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Source: https://reflectoring.io/java-feature-flags/',
                style: FlutterDeckTheme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        );
      },
    );
  }
}
