import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'flutter_tutorials_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(const FlutterTutorialsApp());
}
