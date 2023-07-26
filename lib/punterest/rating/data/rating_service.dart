import 'package:firebase_remote_config_talk/punterest/firebase/firebase_remote_config_service.dart';
import 'package:firebase_remote_config_talk/punterest/rating/data/enums/rating_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rating_service.g.dart';

@riverpod
RatingService ratingService(RatingServiceRef ref) {
  return RatingService(
    firebaseRemoteConfigService: ref.watch(firebaseRemoteConfigServiceProvider),
  );
}

@riverpod
bool ratingEnabled(RatingEnabledRef ref) {
  return ref.watch(ratingServiceProvider).getRatingEnabled();
}

@riverpod
RatingType ratingType(RatingTypeRef ref) {
  return ref.watch(ratingServiceProvider).getRatingType();
}

@riverpod
class RateNotifier extends _$RateNotifier {
  @override
  bool build() => true;

  void rate() {
    ref.read(ratingServiceProvider).rate();

    state = !state;
  }
}

class RatingService {
  const RatingService({
    required this.firebaseRemoteConfigService,
  });

  final FirebaseRemoteConfigService firebaseRemoteConfigService;

  void rate() {
    // Call analytics service
  }

  bool getRatingEnabled() {
    return firebaseRemoteConfigService.getRatingEnabled();
  }

  RatingType getRatingType() {
    final type = firebaseRemoteConfigService.getRatingType();

    return RatingType.fromString(type);
  }
}
