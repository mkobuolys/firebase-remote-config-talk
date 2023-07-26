import 'package:firebase_remote_config_talk/punterest/app_update/data/models/app_update_status.dart';
import 'package:firebase_remote_config_talk/punterest/firebase/firebase_remote_config_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_update_service.g.dart';

@riverpod
AppUpdateService appUpdateService(AppUpdateServiceRef ref) {
  return AppUpdateService(
    firebaseRemoteConfigService: ref.watch(firebaseRemoteConfigServiceProvider),
  );
}

@riverpod
Future<AppUpdateStatus> updateStatus(UpdateStatusRef ref) async {
  await Future.delayed(
    const Duration(seconds: 2),
    () {
      // Simulate network delay
    },
  );

  return ref.watch(appUpdateServiceProvider).checkForUpdate();
}

class AppUpdateService {
  const AppUpdateService({
    required this.firebaseRemoteConfigService,
  });

  final FirebaseRemoteConfigService firebaseRemoteConfigService;

  AppUpdateStatus checkForUpdate() {
    return firebaseRemoteConfigService.getAppUpdateStatus();
  }
}
