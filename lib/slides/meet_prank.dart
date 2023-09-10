import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class MeetPrankSlide extends FlutterDeckSlideWidget {
  const MeetPrankSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/meet-prank',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Column(
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
            style: FlutterDeckTheme.of(context).textTheme.title,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
