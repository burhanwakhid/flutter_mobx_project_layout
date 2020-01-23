import 'package:flutter/material.dart';
import 'package:flutter_mobxx/layouts/view/counter_page.dart';
import 'package:flutter_mobxx/layouts/view/home_page.dart';

class Router {
  static const String root = '/';
  static const String produk = '/recipe';
  static const String login = '/login';
  static const String history = '/history';
  static const String home = '/home';
  static const String onboarding = '/onboarding';
  static const String account = '/account';
  static const String dashboard = '/dashboard';
  static const String topup = '/topup';
  static const String counter = '/counter';
  static const String changeTelp = '/changeTelp';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case root:
        return MaterialPageRoute(builder: (_) => CounterExample());
      case home:
        return MaterialPageRoute(builder: (_) => HomePage());   
      case counter:
        return MaterialPageRoute(builder: (_) => CounterExample());    
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}