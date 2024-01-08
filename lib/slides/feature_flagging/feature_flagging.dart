import 'package:firebase_remote_config_talk/slides/feature_flagging/audio_listener.dart';
import 'package:firebase_remote_config_talk/slides/feature_flagging/cross_platform_ptsd.dart';
import 'package:firebase_remote_config_talk/slides/feature_flagging/feature_flagging_chat.dart';
import 'package:firebase_remote_config_talk/slides/feature_flagging/feature_flagging_demo.dart';
import 'package:firebase_remote_config_talk/slides/feature_flagging/feature_flagging_title.dart';
import 'package:firebase_remote_config_talk/slides/feature_flagging/firebase_rollout_preview.dart';
import 'package:firebase_remote_config_talk/slides/feature_flagging/global_feature_flag.dart';
import 'package:firebase_remote_config_talk/slides/feature_flagging/percentage_rollout.dart';
import 'package:firebase_remote_config_talk/slides/feature_flagging/rating_enabled_conditional.dart';
import 'package:firebase_remote_config_talk/slides/feature_flagging/rating_enabled_parameter.dart';

const featureFlaggingSlides = [
  FeatureFlaggingTitleSlide(),
  FeatureFlaggingChatSlide(),
  CrossPlatformPtsdSlide(),
  GlobalFeatureFlagSlide(),
  PercentageRolloutSlide(),
  RatingEnabledParameterSlide(),
  RatingEnabledConditionalSlide(),
  AudioListenerSlide(),
  FeatureFlaggingDemoSlide(),
  FirebaseRolloutPreviewSlide(),
];
