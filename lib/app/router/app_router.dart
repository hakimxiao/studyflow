import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:studyflow/core/widgets/feature_placeholder_screen.dart';
import 'package:studyflow/core/widgets/main_shell.dart';
import 'package:studyflow/features/dashboard/presentation/screens/dashboard_screen.dart';

GoRouter createAppRouter() {
  return GoRouter(
    initialLocation: '/',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainShell(navigationShell: navigationShell);
        },
        branches: [
          // Beranda / Dashboard
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/',
                name: 'home',
                builder: (context, state) => const DashboardScreen(),
              ),
            ],
          ),

          // Schedule
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/schedule',
                name: 'schedule',
                builder: (context, state) => const FeaturePlaceholderScreen(
                  title: 'Jadwal',
                  description: 'Kelolah jadwal belajar mingguan',
                  icon: Icons.calendar_month_rounded,
                ),
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/tasks',
                name: 'tasks',
                builder: (context, state) => const FeaturePlaceholderScreen(
                  title: 'Tugas',
                  description: 'Atur dan lacak tugas tugas belajar kamu',
                  icon: Icons.checklist_rounded,
                ),
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/progress',
                name: 'progress',
                builder: (context, state) => const FeaturePlaceholderScreen(
                  title: 'Progres',
                  description: 'Lacak sejauh mana proses belajar kamu',
                  icon: Icons.analytics_rounded,
                ),
              ),
            ],
          ),
        ],
      ),
    ],

    errorBuilder: (context, state) => const Scaffold(
      body: SafeArea(child: Center(child: Text('Halaman tidak ditemukan'))),
    ),
  );
}
