import 'package:eye_cinema_app/screens/filminfo/filminfo.dart';
import 'package:eye_cinema_app/screens/filmschedule/filmschedule.dart';
import 'package:eye_cinema_app/screens/login/Login.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => Login(),
  "/FilmSchedule": (BuildContext context) => FilmSchedule(),
  "/FilmSchedule/{FILM_ID}/FilmInfo": (BuildContext context) => FilmInfo(), // TODO Figure out how routes with IDs work
};