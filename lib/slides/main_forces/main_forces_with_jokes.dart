import 'dart:math' as math;

import 'package:confetti/confetti.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class MainForcesWithJokesSlide extends FlutterDeckSlideWidget {
  const MainForcesWithJokesSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/main-forces-with-jokes',
            title: 'The third main force',
            transition: FlutterDeckTransition.none(),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const _Content(),
    );
  }
}

class _Content extends StatefulWidget {
  const _Content();

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  late final ConfettiController _controller;

  @override
  void initState() {
    super.initState();

    _controller = ConfettiController(duration: const Duration(seconds: 2))
      ..play();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Image.asset(
            'assets/images/forces/main-forces-final.png',
            fit: BoxFit.contain,
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: ConfettiWidget(
            blastDirection: math.pi / 2,
            blastDirectionality: BlastDirectionality.explosive,
            confettiController: _controller,
            emissionFrequency: 0.04,
            minBlastForce: 20,
            maxBlastForce: 50,
            numberOfParticles: 15,
          ),
        ),
      ],
    );
  }
}
