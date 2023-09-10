import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RealTimeConfigExplainedSlide extends FlutterDeckSlideWidget {
  const RealTimeConfigExplainedSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/real-time-config-explained',
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
                    'assets/images/firebase-parameters/real-time-client-server.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Source: https://firebase.google.com/docs/remote-config/real-time',
                style: FlutterDeckTheme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 32),
              Text(
                'Real-time Remote Config',
                style: FlutterDeckTheme.of(context).textTheme.title,
              ),
            ],
          ),
        );
      },
    );
  }
}
