import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:toonflix/screen/new_page.dart';
import 'package:toonflix/screen/new_page2.dart';

void main() async {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
            path: '/',
            name: 'home',
            builder: (context, state) => const HomeWidget(),
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
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Router 2'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NewPage()),
            );
          },
          child: const Text('Go to Page'),
        ),
      ),
    );
  }
}
