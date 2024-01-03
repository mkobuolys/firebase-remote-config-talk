import 'package:device_frame/device_frame.dart';
import 'package:firebase_remote_config_talk/data.dart';
import 'package:firebase_remote_config_talk/punterest/app_update/data/models/app_update_status.dart';
import 'package:firebase_remote_config_talk/punterest/punterest_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AppUpdateDemoSlide extends FlutterDeckSlideWidget {
  const AppUpdateDemoSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/app-update-demo',
            title: 'Demo: App update dialog',
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
  var _iosConfig = firebaseRemoteConfig;
  var _androidConfig = firebaseRemoteConfig;

  var _showAndroidDevice = false;

  void _onConfigUpdate() => setState(() {
        _iosConfig = _iosConfig.copyWith(
          appUpdateStatus: const AppUpdateStatus(updateAvailable: true),
        );
        _androidConfig = _androidConfig.copyWith(
          appUpdateStatus: const AppUpdateStatus(
            updateAvailable: true,
            optional: false,
          ),
        );
      });

  void _onDeviceChange() {
    setState(() => _showAndroidDevice = !_showAndroidDevice);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  'assets/images/firebase-conditions/use-android-condition.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 32),
              Center(
                child: FilledButton(
                  onPressed: _onConfigUpdate,
                  child: const Text('Update app version'),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Expanded(
                child: _showAndroidDevice
                    ? DeviceFrame(
                        device: Devices.android.samsungGalaxyNote20,
                        screen: PunterestApp(
                          key: UniqueKey(),
                          firebaseRemoteConfig: _androidConfig,
                        ),
                      )
                    : DeviceFrame(
                        device: Devices.ios.iPhone13,
                        screen: PunterestApp(
                          key: UniqueKey(),
                          firebaseRemoteConfig: _iosConfig,
                        ),
                      ),
              ),
              const SizedBox(height: 32),
              Center(
                child: FilledButton(
                  onPressed: _onDeviceChange,
                  child: const Text('Change device'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
