import 'package:device_frame/device_frame.dart';
import 'package:firebase_remote_config_talk/data.dart';
import 'package:firebase_remote_config_talk/punterest/punterest_app.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PunterestDemoSlide extends FlutterDeckBlankSlide {
  const PunterestDemoSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/punterest-demo',
          ),
        );

  @override
  Widget body(BuildContext context) {
    return Center(
      child: DeviceFrame(
        device: Devices.ios.iPhone13,
        screen: PunterestApp(
          firebaseRemoteConfig: firebaseRemoteConfig.copyWith(
            specialEventLive: true,
          ),
        ),
      ),
    );
  }
}
