import 'package:firebase_remote_config_talk/slides/using_parameters/daily_pun_demo.dart';
import 'package:firebase_remote_config_talk/slides/using_parameters/daily_pun_parameter.dart';
import 'package:firebase_remote_config_talk/slides/using_parameters/daily_pun_service.dart';
import 'package:firebase_remote_config_talk/slides/using_parameters/firebase_service_init.dart';
import 'package:firebase_remote_config_talk/slides/using_parameters/minimum_fetch_interval_problem.dart';
import 'package:firebase_remote_config_talk/slides/using_parameters/parameter_types.dart';
import 'package:firebase_remote_config_talk/slides/using_parameters/real_time_config_code.dart';
import 'package:firebase_remote_config_talk/slides/using_parameters/real_time_config_explained.dart';
import 'package:firebase_remote_config_talk/slides/using_parameters/using_parameters_chat.dart';
import 'package:firebase_remote_config_talk/slides/using_parameters/using_parameters_title.dart';

const usingParametersSlides = [
  UsingParametersTitleSlide(),
  UsingParametersChatSlide(),
  ParameterTypesSlide(),
  DailyPunParameterSlide(),
  FirebaseServiceInitSlide(),
  DailyPunServiceSlide(),
  MinimumFetchIntervalProblemSlide(),
  RealTimeConfigExplainedSlide(),
  RealTimeConfigCodeSlide(),
  DailyPunDemoSlide(),
];
