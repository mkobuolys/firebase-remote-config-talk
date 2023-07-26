import 'package:firebase_remote_config_talk/punterest/app_update/data/models/app_update_status.dart';
import 'package:firebase_remote_config_talk/punterest/daily_pun/data/models/daily_pun.dart';
import 'package:firebase_remote_config_talk/punterest/firebase/firebase_remote_config.dart';
import 'package:firebase_remote_config_talk/punterest/rating/data/enums/rating_type.dart';

final firebaseRemoteConfig = FirebaseRemoteConfig(
  appUpdateStatus: const AppUpdateStatus(updateAvailable: false),
  dailyPun: const DailyPun(
    question: 'Why did the Flutter developer turn his monitor 90 degrees?',
    answer: 'To build the app in profile mode.',
  ),
  ratingEnabled: false,
  ratingType: RatingType.button.value,
  specialEventLive: false,
);
