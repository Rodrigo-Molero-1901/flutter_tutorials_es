import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../gen/assets.gen.dart';
import '../routes.dart';

class TutorialSelectorPage extends StatefulWidget {
  const TutorialSelectorPage({super.key});

  @override
  State<TutorialSelectorPage> createState() => _TutorialSelectorPageState();
}

class _TutorialSelectorPageState extends State<TutorialSelectorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () => context.push(Routes.pathBasic),
                child: const Text('Básico'),
              ),
              const SizedBox(height: 15.0),
              ElevatedButton(
                onPressed: () => context.push(Routes.pathIntermediate),
                child: const Text('Intermedio'),
              ),
              const SizedBox(height: 15.0),
              ElevatedButton(
                onPressed: () => context.push(Routes.pathAdvanced),
                child: const Text('Avanzado'),
              ),
              const SizedBox(height: 15.0),
              ElevatedButton(
                onPressed: () => context.push(Routes.pathOther),
                child: const Text('Otros'),
              ),
              const SizedBox(height: 40.0),
              Text('Tutoriales elaborados por:'),
              const SizedBox(height: 15.0),
              Assets.icons.logo.svg(),
            ],
          ),
        ),
      ),
    );
  }
}
