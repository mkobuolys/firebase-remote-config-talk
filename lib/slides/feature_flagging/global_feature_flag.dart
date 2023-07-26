import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class GlobalFeatureFlagSlide extends FlutterDeckBlankSlide {
  const GlobalFeatureFlagSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/global-feature-flag',
          ),
        );

  @override
  Widget body(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = Theme.of(context).colorScheme;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Card(
              color: theme.brightness == Brightness.dark
                  ? colorScheme.onBackground
                  : colorScheme.background,
              child: Image.asset(
                'assets/images/feature-flagging/global-feature-flag.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Source: https://reflectoring.io/java-feature-flags/',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
