import 'package:firebase_remote_config_talk/punterest/daily_pun/widgets/daily_pun_view.dart';
import 'package:firebase_remote_config_talk/punterest/rating/data/rating_service.dart';
import 'package:firebase_remote_config_talk/punterest/rating/widgets/rating_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  static PageRoute<HomePage> get route => MaterialPageRoute(
        builder: (_) => const HomePage(),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ratingEnabled = ref.watch(ratingEnabledProvider);
    final ratingType = ref.watch(ratingTypeProvider);

    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: ratingEnabled && ratingType.isAudio()
              ? ref.read(rateNotifierProvider.notifier).rate
              : null,
          child: const Text('Punterest'),
        ),
      ),
      body: const RatingListener(
        child: SafeArea(
          child: DailyPunView(),
        ),
      ),
      floatingActionButton: ratingEnabled && ratingType.isButton()
          ? FloatingActionButton(
              onPressed: ref.read(rateNotifierProvider.notifier).rate,
              child: const Icon(Icons.favorite),
            )
          : null,
    );
  }
}
