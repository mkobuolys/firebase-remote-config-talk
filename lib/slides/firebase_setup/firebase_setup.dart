import 'package:firebase_remote_config_talk/slides/firebase_setup/add_firebase.dart';
import 'package:firebase_remote_config_talk/slides/firebase_setup/configure_firebase.dart';
import 'package:firebase_remote_config_talk/slides/firebase_setup/configure_ga.dart';
import 'package:firebase_remote_config_talk/slides/firebase_setup/create_project.dart';
import 'package:firebase_remote_config_talk/slides/firebase_setup/dashboard_empty.dart';
import 'package:firebase_remote_config_talk/slides/firebase_setup/enable_ga.dart';
import 'package:firebase_remote_config_talk/slides/firebase_setup/firebase_dependencies.dart';
import 'package:firebase_remote_config_talk/slides/firebase_setup/firebase_setup_title.dart';
import 'package:firebase_remote_config_talk/slides/firebase_setup/initialize_firebase.dart';
import 'package:firebase_remote_config_talk/slides/firebase_setup/project_name.dart';

const firebaseSetupSlides = [
  FirebaseSetupTitleSlide(),
  CreateProjectSlide(),
  ProjectNameSlide(),
  EnableGaSlide(),
  ConfigureGaSlide(),
  DashboardEmptySlide(),
  AddFirebaseSlide(),
  FirebaseDependenciesSlide(),
  ConfigureFirebaseSlide(),
  InitializeFirebaseSlide(),
];
