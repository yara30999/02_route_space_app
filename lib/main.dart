import 'package:flutter/material.dart';

import 'resourses/routes_manager.dart';
import 'resourses/theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'space app yara',
      themeMode: ThemeMode.dark,
      darkTheme: getDarkTheme(),
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.loginRoute,
    );
  }
}
