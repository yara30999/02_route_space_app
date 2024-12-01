import 'package:flutter/material.dart';
import '../models/planet.dart';
import '../screens/home/home_screen.dart';
import '../screens/login/login_screen.dart';
import '../screens/planet_details/planet_datails_screen.dart';

class Routes {
  static const String loginRoute = "/";
  static const String homeRoute = "/home_route";
  static const String planetDetailsRoute = "/planet_details_route";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    var planetData = settings.arguments as PlanetModel?;
    switch (settings.name) {
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.planetDetailsRoute:
        return MaterialPageRoute(
            builder: (_) => PlanetDetailsScreen(planetData: planetData!));
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text('S.current.noRouteFound'),
              ),
              body: const Center(child: Text('S.current.noRouteFound')),
            ));
  }
}
