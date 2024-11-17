import 'package:advanced_module/advanced_module.dart';
import 'package:basic_module/basic_module.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intermediate_module/intermediate_module.dart';
import 'package:other_module/other_module.dart';

import 'presenter/pages/tutorial_selector_page.dart';
import 'presenter/routes.dart';

class FlutterTutorialsApp extends StatefulWidget {
  const FlutterTutorialsApp({super.key});

  @override
  State<FlutterTutorialsApp> createState() => _FlutterTutorialsAppState();
}

class _FlutterTutorialsAppState extends State<FlutterTutorialsApp> {
  final GoRouter _router = GoRouter(
    initialLocation: Routes.pathInitial,
    routes: [
      GoRoute(
        path: Routes.pathInitial,
        builder: (context, state) {
          return TutorialSelectorPage();
        },
      ),
      GoRoute(
        path: Routes.pathBasic,
        builder: (context, state) {
          return BasicModulePage();
        },
      ),
      GoRoute(
        path: Routes.pathIntermediate,
        builder: (context, state) {
          return IntermediateModulePage();
        },
      ),
      GoRoute(
        path: Routes.pathAdvanced,
        builder: (context, state) {
          return AdvancedModulePage();
        },
      ),
      GoRoute(
        path: Routes.pathOther,
        builder: (context, state) {
          return OtherModulePage();
        },
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Tutoriales Flutter en Español',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.blueGrey),
      routerConfig: _router,
    );
  }
}
