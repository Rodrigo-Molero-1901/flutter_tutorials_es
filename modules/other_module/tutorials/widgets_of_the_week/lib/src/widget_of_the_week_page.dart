import 'package:flutter/material.dart';

import 'weeks/weeks.dart';

class WidgetOfTheWeekPage extends StatelessWidget {
  const WidgetOfTheWeekPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets de la semana'),
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _GoToWeekButton(
                title: 'Semana 1: SafeArea',
                widgetOfTheWeek: Week1(),
              ),
              _GoToWeekButton(
                title: 'Semana 2: No sé',
                widgetOfTheWeek: Week2(),
              ),
              _GoToWeekButton(
                title: 'Semana 2: No sé',
                widgetOfTheWeek: Week3(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _GoToWeekButton extends StatelessWidget {
  final String title;
  final Widget widgetOfTheWeek;

  const _GoToWeekButton({
    required this.title,
    required this.widgetOfTheWeek,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => widgetOfTheWeek,
          ),
        );
      },
      child: Text(title),
    );
  }
}
