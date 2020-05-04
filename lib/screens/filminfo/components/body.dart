import 'package:eye_cinema_app/screens/filmschedule/components/menusection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'filmsshowing.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget menuSection = Container(
      padding: const EdgeInsets.all(2),
      child: MenuSection(),
    );

    Widget posterSection = Container(
      child: null,
    );

    Widget todayViewingTimeSection = Container(
      padding: const EdgeInsets.all(16),
      child: FilmsShowing(),
    );

    Widget weekTimeSection = Container(
      child: null,
    );

    return ListView(
      children: [
        menuSection,
        posterSection,
        todayViewingTimeSection,
        weekTimeSection,
      ],
    );
  }
}
