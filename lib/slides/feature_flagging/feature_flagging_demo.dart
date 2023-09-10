import 'package:device_frame/device_frame.dart';
import 'package:firebase_remote_config_talk/data.dart';
import 'package:firebase_remote_config_talk/punterest/punterest_app.dart';
import 'package:firebase_remote_config_talk/punterest/rating/data/enums/rating_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FeatureFlaggingDemoSlide extends FlutterDeckSlideWidget {
  const FeatureFlaggingDemoSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/feature-flagging-demo',
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

  var _config = firebaseRemoteConfig.copyWith(
    ratingEnabled: true,
    ratingType: RatingType.audio.value,
  );
  var _ratingEnabled = true;

  void _onRatingEnabledChanged(bool value) => setState(
        () {
          _ratingEnabled = value;
          _config = _config.copyWith(ratingEnabled: _ratingEnabled);
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
                  'assets/images/feature-flagging/rating-parameter-conditional.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Rating enabled: ',
                    style: FlutterDeckTheme.of(context).textTheme.bodyMedium,
                  ),
                  Switch(
                    value: _ratingEnabled,
                    onChanged: _onRatingEnabledChanged,
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
