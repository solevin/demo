import 'package:flutter/material.dart';
import 'top/top.dart';
import 'count/count.dart';

class RouteGenerator {
  // ignore: missing_return
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => TopScreen(),
        );
      case '/count':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => CountScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) {
            return Scaffold(
              body: Center(
                child: Text('No Route for ${settings.name}'),
              ),
            );
          },
        );
    }
  }
}
