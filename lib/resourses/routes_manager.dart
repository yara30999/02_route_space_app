import 'package:flutter/material.dart';

class Routes {
  static const String loginRoute = "/";
  static const String homeRoute = "/home_route";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      // case Routes.loginRoute:
      //   return MaterialPageRoute(builder: (_) => const LoginScreen());
      // case Routes.homeRoute:
      //   return MaterialPageRoute(builder: (_) => const HomeScreen());
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