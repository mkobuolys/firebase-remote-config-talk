import 'package:firebase_remote_config_talk/slides/feature_flagging/audio_listener.dart';
import 'package:firebase_remote_config_talk/slides/feature_flagging/cross_platform_ptsd.dart';
import 'package:firebase_remote_config_talk/slides/feature_flagging/feature_flagging_demo.dart';
import 'package:firebase_remote_config_talk/slides/feature_flagging/feature_flagging_title.dart';
import 'package:firebase_remote_config_talk/slides/feature_flagging/global_feature_flag.dart';
import 'package:firebase_remote_config_talk/slides/feature_flagging/laugh_meter.dart';
import 'package:firebase_remote_config_talk/slides/feature_flagging/percentage_rollout.dart';
import 'package:firebase_remote_config_talk/slides/feature_flagging/rating_enabled_conditional.dart';
import 'package:firebase_remote_config_talk/slides/feature_flagging/rating_enabled_parameter.dart';
import 'package:firebase_remote_config_talk/slides/feature_flagging/rating_service.dart';

const featureFlaggingSlides = [
  FeatureFlaggingTitleSlide(),
  LaughMeterSlide(),
  CrossPlatformPtsdSlide(),
  GlobalFeatureFlagSlide(),
  PercentageRolloutSlide(),
  RatingEnabledParameterSlide(),
  RatingEnabledConditionalSlide(),
  RatingServiceSlide(),
  AudioListenerSlide(),
  FeatureFlaggingDemoSlide(),
];
