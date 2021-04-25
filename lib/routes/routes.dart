import 'package:flutter/material.dart';
import '../main.dart';
import '../pages/carwash.dart';

var customRoutes = <String, WidgetBuilder>{
  '/': (context) => Myapp(),
  '/second': (context) => CarWashApp(),
};
