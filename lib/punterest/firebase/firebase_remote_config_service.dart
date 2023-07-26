import 'package:firebase_remote_config_talk/punterest/app_update/data/models/app_update_status.dart';
import 'package:firebase_remote_config_talk/punterest/daily_pun/data/models/daily_pun.dart';
import 'package:firebase_remote_config_talk/punterest/firebase/firebase_remote_config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_remote_config_service.g.dart';

@riverpod
FirebaseRemoteConfigService firebaseRemoteConfigService(_) {
  throw UnimplementedError();
}

class FirebaseRemoteConfigService {
  const FirebaseRemoteConfigService({
    required this.config,
  });

  final FirebaseRemoteConfig config;

  AppUpdateStatus getAppUpdateStatus() => config.appUpdateStatus;

  DailyPun getDailyPun() => config.dailyPun;

  bool getRatingEnabled() => config.ratingEnabled;

  String getRatingType() => config.ratingType;
}
