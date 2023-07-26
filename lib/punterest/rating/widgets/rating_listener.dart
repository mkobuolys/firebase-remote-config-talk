import 'package:firebase_remote_config_talk/punterest/rating/data/rating_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RatingListener extends ConsumerWidget {
  const RatingListener({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(rateNotifierProvider, (_, __) {
      const snackBar = SnackBar(
        content: Text(
          'Thanks for your LOL!',
          textAlign: TextAlign.center,
        ),
        duration: Duration(milliseconds: 1500),
      );

      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(snackBar);
    });

    return child;
  }
}
