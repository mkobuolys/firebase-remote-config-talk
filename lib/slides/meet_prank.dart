import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class MeetPrankSlide extends FlutterDeckBlankSlide {
  const MeetPrankSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/meet-prank',
          ),
        );

  @override
  Widget body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Image.asset(
            'assets/images/prank.png',
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 32),
        Text(
          'Prank van Flutter',
          style: Theme.of(context).textTheme.displayLarge,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
