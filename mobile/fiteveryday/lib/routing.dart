import 'package:fiteveryday/features/auth/screen/login_page.dart';
import 'package:fiteveryday/features/exercises/screens/exercise_page.dart';
import 'package:fiteveryday/features/home/screen/home_page.dart';
import 'package:fiteveryday/features/plan/screen/plan_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
      // base route for login
      path: "/",
      builder: (context, state) {
        return const LoginPage();
      },
      routes: [
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return PersistentTabView.router(
              tabs: [
                PersistentRouterTabConfig(
                  item: ItemConfig(
                    icon: const Icon(Icons.home),
                    title: "Home",
                  ),
                ),
                PersistentRouterTabConfig(
                  item: ItemConfig(
                    icon: const Icon(Icons.calendar_month_rounded),
                    title: "Plan",
                  ),
                ),
                PersistentRouterTabConfig(
                  item: ItemConfig(
                    icon: const Icon(Icons.home),
                    title: "Me",
                  ),
                ),
              ],
              navBarBuilder: (navbarConfig) => Style10BottomNavBar(navBarConfig: navbarConfig),
              navigationShell: navigationShell,
            );
          },
          branches: [
            StatefulShellBranch(
              routes: <RouteBase>[
                GoRoute(
                  path: "home",
                  builder: (context, state) {
                    return const HomePage();
                  },
                ),
              ],
            ),
            StatefulShellBranch(
              routes: <RouteBase>[
                GoRoute(
                  path: "plan",
                  builder: (context, state) {
                    return const PlanPage();
                  },
                ),
              ],
            ),
            StatefulShellBranch(
              routes: <RouteBase>[
                GoRoute(
                  path: "exercise",
                  builder: (context, state) {
                    return const ExercisePage();
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);
