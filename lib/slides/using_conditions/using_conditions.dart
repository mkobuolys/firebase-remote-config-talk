import 'package:firebase_remote_config_talk/slides/using_conditions/add_condition.dart';
import 'package:firebase_remote_config_talk/slides/using_conditions/android_condition.dart';
import 'package:firebase_remote_config_talk/slides/using_conditions/app_update_demo.dart';
import 'package:firebase_remote_config_talk/slides/using_conditions/app_update_service.dart';
import 'package:firebase_remote_config_talk/slides/using_conditions/crashlytics.dart';
import 'package:firebase_remote_config_talk/slides/using_conditions/date_time_condition.dart';
import 'package:firebase_remote_config_talk/slides/using_conditions/first_app_open_condition.dart';
import 'package:firebase_remote_config_talk/slides/using_conditions/language_condition.dart';
import 'package:firebase_remote_config_talk/slides/using_conditions/slow_app_review.dart';
import 'package:firebase_remote_config_talk/slides/using_conditions/slow_update.dart';
import 'package:firebase_remote_config_talk/slides/using_conditions/splash_page.dart';
import 'package:firebase_remote_config_talk/slides/using_conditions/use_android_condition.dart';
import 'package:firebase_remote_config_talk/slides/using_conditions/using_conditions_title.dart';

const usingConditionsSlides = [
  UsingConditionsTitleSlide(),
  CrashlyticsSlide(),
  SlowUpdateSlide(),
  SlowAppReviewSlide(),
  AddConditionSlide(),
  AndroidConditionSlide(),
  UseAndroidConditionSlide(),
  AppUpdateServiceSlide(),
  SplashPageSlide(),
  AppUpdateDemoSlide(),
  LanguageConditionSlide(),
  DateTimeConditionSlide(),
  FirstAppOpenConditionSlide(),
];
