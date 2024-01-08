import 'package:firebase_remote_config_talk/slides/ab_testing/ab_testing_chat.dart';
import 'package:firebase_remote_config_talk/slides/ab_testing/ab_testing_demo.dart';
import 'package:firebase_remote_config_talk/slides/ab_testing/ab_testing_idea.dart';
import 'package:firebase_remote_config_talk/slides/ab_testing/ab_testing_title.dart';
import 'package:firebase_remote_config_talk/slides/ab_testing/create_ab_test.dart';
import 'package:firebase_remote_config_talk/slides/ab_testing/experiment_results.dart';
import 'package:firebase_remote_config_talk/slides/ab_testing/pun_rating_experiment.dart';
import 'package:firebase_remote_config_talk/slides/ab_testing/rating_type_parameter.dart';
import 'package:firebase_remote_config_talk/slides/ab_testing/rating_type_parameter_with_experiment.dart';
import 'package:firebase_remote_config_talk/slides/ab_testing/rating_type_usage.dart';

const abTestingSlides = [
  AbTestingTitleSlide(),
  AbTestingChatSlide(),
  AbTestingIdeaSlide(),
  RatingTypeParameterSlide(),
  ...createAbTestSlides,
  PunRatingExperimentSlide(),
  RatingTypeParameterWithExperimentSlide(),
  RatingTypeUsageSlide(),
  AbTestingDemoSlide(),
  ExperimentResultsSlide(),
];
