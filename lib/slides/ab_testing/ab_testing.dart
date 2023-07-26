import 'package:firebase_remote_config_talk/slides/ab_testing/ab_testing_demo.dart';
import 'package:firebase_remote_config_talk/slides/ab_testing/ab_testing_idea.dart';
import 'package:firebase_remote_config_talk/slides/ab_testing/ab_testing_title.dart';
import 'package:firebase_remote_config_talk/slides/ab_testing/create_ab_test.dart';
import 'package:firebase_remote_config_talk/slides/ab_testing/experiment_results.dart';
import 'package:firebase_remote_config_talk/slides/ab_testing/get_rating_type.dart';
import 'package:firebase_remote_config_talk/slides/ab_testing/nose_exhale.dart';
import 'package:firebase_remote_config_talk/slides/ab_testing/pun_rating_experiment.dart';
import 'package:firebase_remote_config_talk/slides/ab_testing/rating_type_parameter.dart';
import 'package:firebase_remote_config_talk/slides/ab_testing/rating_type_parameter_with_experiment.dart';
import 'package:firebase_remote_config_talk/slides/ab_testing/rating_type_service.dart';
import 'package:firebase_remote_config_talk/slides/ab_testing/rating_type_usage.dart';

const abTestingSlides = [
  AbTestingTitleSlide(),
  NoseExhaleSlide(),
  AbTestingIdeaSlide(),
  RatingTypeParameterSlide(),
  ...createAbTestSlides,
  PunRatingExperimentSlide(),
  RatingTypeParameterWithExperimentSlide(),
  GetRatingTypeSlide(),
  RatingTypeServiceSlide(),
  RatingTypeUsageSlide(),
  AbTestingDemoSlide(),
  ExperimentResultsSlide(),
];
