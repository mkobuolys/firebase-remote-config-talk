import 'dart:math' as math;

import 'package:firebase_remote_config_talk/punterest/daily_pun/data/models/daily_pun.dart';
import 'package:flutter/material.dart';

class DailyPunCard extends StatefulWidget {
  const DailyPunCard({
    required this.dailyPun,
    super.key,
  });

  final DailyPun dailyPun;

  @override
  State<DailyPunCard> createState() => _DailyPunCardState();
}

class _DailyPunCardState extends State<DailyPunCard> {
  var _frontVisible = true;

  @override
  void didUpdateWidget(DailyPunCard oldWidget) {
    super.didUpdateWidget(oldWidget);

    setState(() => _frontVisible = true);
  }

  void _flipCard() => setState(() => _frontVisible = !_frontVisible);

  @override
  Widget build(BuildContext context) {
    final DailyPun(question: question, answer: answer) = widget.dailyPun;

    return GestureDetector(
      onTap: answer != null ? _flipCard : null,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        transitionBuilder: (child, animation) {
          final rotate = Tween<double>(
            begin: math.pi,
            end: 0,
          ).animate(animation);

          return AnimatedBuilder(
            animation: rotate,
            builder: (context, child) => Transform(
              transform: Matrix4.rotationY(math.min(rotate.value, math.pi / 2)),
              alignment: Alignment.center,
              child: child,
            ),
            child: child,
          );
        },
        switchInCurve: Curves.easeInCubic,
        switchOutCurve: Curves.easeOutCubic,
        child: Card(
          key: ValueKey(_frontVisible),
          color: Theme.of(context).colorScheme.secondary,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      _frontVisible ? question : answer ?? '',
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                if (answer != null)
                  Icon(
                    Icons.flip,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
