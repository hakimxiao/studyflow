import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:studyflow/app/theme/app_theme.dart';

class StudyFlowApp extends StatelessWidget {
  const StudyFlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = context.read<GoRouter>();

    return MaterialApp.router(
      title: 'StudyFlow',
      debugShowCheckedModeBanner: true,

      theme: AppTheme.light,
      routerConfig: router,
    );
  }
}
