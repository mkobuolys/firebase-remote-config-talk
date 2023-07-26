import 'package:firebase_remote_config_talk/punterest/firebase/firebase_remote_config.dart';
import 'package:firebase_remote_config_talk/punterest/firebase/firebase_remote_config_service.dart';
import 'package:firebase_remote_config_talk/punterest/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PunterestApp extends StatelessWidget {
  const PunterestApp({
    required this.firebaseRemoteConfig,
    super.key,
  });

  final FirebaseRemoteConfig firebaseRemoteConfig;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        firebaseRemoteConfigServiceProvider.overrideWith(
          (_) => FirebaseRemoteConfigService(config: firebaseRemoteConfig),
        ),
      ],
      child: _App(firebaseRemoteConfig: firebaseRemoteConfig),
    );
  }
}

class _App extends ConsumerStatefulWidget {
  const _App({
    required this.firebaseRemoteConfig,
  });

  final FirebaseRemoteConfig firebaseRemoteConfig;

  @override
  ConsumerState<_App> createState() => _AppState();
}

class _AppState extends ConsumerState<_App> {
  @override
  void didUpdateWidget(covariant _App oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (mounted) ref.invalidate(firebaseRemoteConfigServiceProvider);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Punterest',
      theme: ThemeData.from(
        colorScheme: const ColorScheme.dark(),
        useMaterial3: true,
      ),
      home: const SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
