import 'package:go_router/go_router.dart';
import 'package:widgets_of_the_week/widgets_of_the_week.dart';

import 'routes.dart';

final otherModuleTutorialRoutes = [
  GoRoute(
    path: Routes.pathWidgetsOfTheWeek,
    builder: (context, state) {
      return const WidgetOfTheWeekPage();
    },
  ),
];
