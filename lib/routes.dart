import 'package:eye_cinema_app/screens/filmschedule/FilmSchedule.dart';
import 'package:eye_cinema_app/screens/login/Login.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => Login(),
  "/FilmSchedule": (BuildContext context) => FilmSchedule(),
};