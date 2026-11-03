import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:studyflow/app/router/app_router.dart';

class AppProviders extends StatelessWidget {
  const AppProviders({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<GoRouter>(
          create: (_) => createAppRouter(),
          dispose: (_, router) => router.dispose(),
        ),
      ],
      child: child,
    );
  }
}
