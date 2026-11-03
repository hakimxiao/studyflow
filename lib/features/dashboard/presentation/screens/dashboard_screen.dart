import 'package:flutter/material.dart';
import 'package:studyflow/core/widgets/feature_placeholder_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FeaturePlaceholderScreen(
      title: 'Welcome to studyFlow',
      description: 'Handle your tasks by clear and easy',
      icon: Icons.dashboard_rounded,
    );
  }
}
