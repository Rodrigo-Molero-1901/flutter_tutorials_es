import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../router/routes.dart';

class OtherModulePage extends StatelessWidget {
  const OtherModulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Módulo variado'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () => context.push(Routes.pathWidgetsOfTheWeek),
                child: const Text('Widgets de la semana'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
