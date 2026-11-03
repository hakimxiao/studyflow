import 'package:flutter/material.dart';
import 'package:studyflow/app/dependency_injection/app_providers.dart';
import 'package:studyflow/app/study_flow_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const AppProviders(child: StudyFlowApp()));
}
