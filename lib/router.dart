import 'package:flutter/material.dart';
import 'package:go_riverpod/screens/todo_screen.dart';
import 'package:go_router/go_router.dart';

import "screens/home_screen.dart";
import 'screens/page_2_screen.dart';
import 'screens/fruits_screen.dart';
import 'screens/fruits_detail_screen.dart';

class MyNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('did push route');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('did pop route');
  }
}

class AppRoutes {
  static GoRouter router = GoRouter(
    initialLocation: '/',
    observers: [MyNavigatorObserver()],
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/page2',
        name: 'page2',
        builder: (context, state) => const Page2Screen(),
      ),
      GoRoute(
        path: '/todo',
        name: 'todo',
        builder: (context, state) => const TodoScreen(),
      ),
      GoRoute(
        path: '/fruits/:id',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return FruitsDetailScreen(id: id);
        },
      ),
      GoRoute(
        path: '/fruits',
        name: 'fruits',
        builder: (context, state) {
          final search = state.uri.queryParameters['search'];
          return FruitsScreen(search: search);
        },
      ),
    ],
    redirect: (context, state) {
      debugPrint('Redirected to ${state.uri.path}');
      return null;
    },
  );
}
