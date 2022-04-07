import 'package:flutter/material.dart';
import 'package:belajar1/routes.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}
