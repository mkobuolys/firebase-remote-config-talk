import 'package:device_frame/device_frame.dart';
import 'package:firebase_remote_config_talk/data.dart';
import 'package:firebase_remote_config_talk/punterest/punterest_app.dart';
import 'package:firebase_remote_config_talk/punterest/rating/data/enums/rating_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AbTestingDemoSlide extends FlutterDeckBlankSlide {
  const AbTestingDemoSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/ab-testing-demo',
          ),
        );

  @override
  Widget body(BuildContext context) => const _Content();
}

class _Content extends StatefulWidget {
  const _Content();

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  final _key = UniqueKey();

  var _config = firebaseRemoteConfig.copyWith(
    ratingEnabled: true,
    ratingType: RatingType.audio.value,
  );
  var _ratingType = RatingType.audio;

  void _onRatingTypeChanged(bool value) => setState(
        () {
          _ratingType = _ratingType == RatingType.audio
              ? RatingType.button
              : RatingType.audio;
          _config = _config.copyWith(ratingType: _ratingType.value);
        },
      );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  'assets/images/ab-testing/rating-type-parameter-with-experiment.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Audio',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(width: 8),
                  Switch(
                    value: _ratingType == RatingType.button,
                    onChanged: _onRatingTypeChanged,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Button',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
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
