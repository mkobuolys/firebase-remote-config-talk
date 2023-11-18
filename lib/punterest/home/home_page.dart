import 'package:firebase_remote_config_talk/punterest/daily_pun/widgets/daily_pun_view.dart';
import 'package:firebase_remote_config_talk/punterest/rating/data/rating_service.dart';
import 'package:firebase_remote_config_talk/punterest/rating/widgets/rating_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:record/record.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  static PageRoute<HomePage> get route => MaterialPageRoute(
        builder: (_) => const HomePage(),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ratingEnabled = ref.watch(ratingEnabledProvider);
    final ratingType = ref.watch(ratingTypeProvider);

    Widget widget = Scaffold(
      appBar: AppBar(title: const Text('Punterest')),
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

    if (ratingEnabled && ratingType.isAudio()) {
      widget = _AudioListener(
        onLaugh: ref.read(rateNotifierProvider.notifier).rate,
        child: widget,
      );
    }

    return widget;
  }
}

class _AudioListener extends StatefulWidget {
  const _AudioListener({
    required this.onLaugh,
    required this.child,
  });

  final VoidCallback onLaugh;
  final Widget child;

  @override
  State<_AudioListener> createState() => _AudioListenerState();
}

class _AudioListenerState extends State<_AudioListener> {
  late final AudioRecorder _audioRecorder;

  @override
  void initState() {
    super.initState();

    const config = RecordConfig(encoder: AudioEncoder.wav);

    _audioRecorder = AudioRecorder()
      ..onAmplitudeChanged(const Duration(seconds: 1)).listen(
        (amplitude) {
          if (amplitude.current < -15) return;

          widget.onLaugh();
        },
      )
      ..start(config, path: '/test.aac');
  }

  @override
  void dispose() {
    _audioRecorder.stop().then((_) => _audioRecorder.dispose());

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
