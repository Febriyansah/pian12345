import 'package:flutter/material.dart';
import 'package:belajar1/screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/about':
        return MaterialPageRoute(builder: (_) => AboutPage());
      // return MaterialPageRoute(builder: (_) => AboutPage(args));
      case '/portofolio':
        return MaterialPageRoute(builder: (_) => Portofolio());
      case '/contact':
        return MaterialPageRoute(builder: (_) => Contact());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error page')),
      );
    });
  }
}
