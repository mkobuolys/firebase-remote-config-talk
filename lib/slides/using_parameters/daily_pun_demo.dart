import 'package:device_frame/device_frame.dart';
import 'package:firebase_remote_config_talk/data.dart';
import 'package:firebase_remote_config_talk/punterest/daily_pun/data/models/daily_pun.dart';
import 'package:firebase_remote_config_talk/punterest/punterest_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class DailyPunDemoSlide extends FlutterDeckSlideWidget {
  const DailyPunDemoSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/daily-pun-demo',
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
  final _key = UniqueKey();

  var _config = firebaseRemoteConfig;
  var _loading = false;

  void _onConfigUpdate() {
    setState(() => _loading = true);

    const dailyPun = DailyPun(
      question: 'What did one Material button say to the other one?',
      answer: 'You look FAB today!',
    );

    Future.delayed(
      const Duration(seconds: 1),
      () => setState(() {
        _config = _config.copyWith(dailyPun: dailyPun);
        _loading = false;
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/firebase-parameters/daily-pun-updated.png',
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 32),
              Center(
                child: FilledButton(
                  onPressed: _loading ? null : _onConfigUpdate,
                  child: const Text('Update daily pun'),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 32),
        DeviceFrame(
          device: Devices.ios.iPhone13,
          screen: PunterestApp(
            key: _key,
            firebaseRemoteConfig: _config,
          ),
        ),
      ],
    );
  }
}
