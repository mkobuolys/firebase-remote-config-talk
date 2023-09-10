import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ChapterView extends StatelessWidget {
  const ChapterView({
    required this.title,
    required this.subtitle,
    super.key,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final textTheme = FlutterDeckTheme.of(context).textTheme;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: textTheme.bodyLarge),
          Text(
            subtitle,
            style: textTheme.title,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
