import 'package:firebase_remote_config_talk/punterest/daily_pun/data/daily_pun_service.dart';
import 'package:firebase_remote_config_talk/punterest/daily_pun/widgets/daily_pun_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DailyPunView extends ConsumerWidget {
  const DailyPunView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dailyPun = ref.watch(dailyPunProvider);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: DailyPunCard(dailyPun: dailyPun),
    );
  }
}
