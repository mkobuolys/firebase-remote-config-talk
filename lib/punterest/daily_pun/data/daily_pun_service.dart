import 'package:firebase_remote_config_talk/punterest/daily_pun/data/models/daily_pun.dart';
import 'package:firebase_remote_config_talk/punterest/firebase/firebase_remote_config_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'daily_pun_service.g.dart';

@riverpod
DailyPunService dailyPunService(DailyPunServiceRef ref) {
  return DailyPunService(
    firebaseRemoteConfigService: ref.watch(firebaseRemoteConfigServiceProvider),
  );
}

@riverpod
DailyPun dailyPun(DailyPunRef ref) {
  return ref.watch(dailyPunServiceProvider).getDailyPun();
}

class DailyPunService {
  const DailyPunService({
    required this.firebaseRemoteConfigService,
  });

  final FirebaseRemoteConfigService firebaseRemoteConfigService;

  DailyPun getDailyPun() {
    return firebaseRemoteConfigService.getDailyPun();
  }
}
