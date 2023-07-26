import 'package:firebase_remote_config_talk/punterest/app_update/data/models/app_update_status.dart';
import 'package:firebase_remote_config_talk/punterest/daily_pun/data/models/daily_pun.dart';

class FirebaseRemoteConfig {
  const FirebaseRemoteConfig({
    required this.appUpdateStatus,
    required this.dailyPun,
    required this.ratingEnabled,
    required this.ratingType,
    required this.specialEventLive,
  });

  final AppUpdateStatus appUpdateStatus;
  final DailyPun dailyPun;
  final bool ratingEnabled;
  final String ratingType;
  final bool specialEventLive;

  FirebaseRemoteConfig copyWith({
    AppUpdateStatus? appUpdateStatus,
    DailyPun? dailyPun,
    bool? ratingEnabled,
    String? ratingType,
    bool? specialEventLive,
  }) {
    return FirebaseRemoteConfig(
      appUpdateStatus: appUpdateStatus ?? this.appUpdateStatus,
      dailyPun: dailyPun ?? this.dailyPun,
      ratingEnabled: ratingEnabled ?? this.ratingEnabled,
      ratingType: ratingType ?? this.ratingType,
      specialEventLive: specialEventLive ?? this.specialEventLive,
    );
  }
}
