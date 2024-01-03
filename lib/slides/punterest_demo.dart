import 'package:device_frame/device_frame.dart';
import 'package:firebase_remote_config_talk/data.dart';
import 'package:firebase_remote_config_talk/punterest/punterest_app.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PunterestDemoSlide extends FlutterDeckSlideWidget {
  const PunterestDemoSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/punterest-demo',
            title: 'Demo: Punterest (static)',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: DeviceFrame(
          device: Devices.ios.iPhone13,
          screen: PunterestApp(
            firebaseRemoteConfig: firebaseRemoteConfig.copyWith(
              specialEventLive: true,
            ),
          ),
        ),
      ),
    );
  }
}
