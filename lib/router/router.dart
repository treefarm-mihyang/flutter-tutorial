import 'package:go_router/go_router.dart';
import 'package:toonflix/main.dart';
import 'package:toonflix/screen/new_page.dart';
import 'package:toonflix/screen/new_page2.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => HomeWidget(),
    ),
    GoRoute(
      path: '/new',
      name: 'new',
      builder: (context, state) => const NewPage(),
    ),
    GoRoute(
      path: '/new2',
      name: 'new2',
      builder: (context, state) => const NewPage2(),
    )
  ],
);
