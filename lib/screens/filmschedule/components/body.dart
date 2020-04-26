import 'package:eye_cinema_app/screens/filmschedule/components/adcarousel.dart';
import 'package:eye_cinema_app/screens/filmschedule/components/filmsshowing.dart';
import 'package:eye_cinema_app/screens/filmschedule/components/menusection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget menuSection = Container(
      padding: const EdgeInsets.all(2),
      child: MenuSection(),
    );

    Widget logoSection = Container(
      child: AdCarousel(),
    );

    Widget filmSection = Container(
      padding: const EdgeInsets.all(16),
      child: FilmsShowing(),
    );

    return ListView(
      children: [
        menuSection,
        logoSection,
        filmSection,
      ],
    );
  }
}