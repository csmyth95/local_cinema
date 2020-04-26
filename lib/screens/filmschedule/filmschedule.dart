import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:eye_cinema_app/screens/filmschedule/components/body.dart';

// Primary screen file which serves to organize each component
class FilmSchedule extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final title = "Film Schedule";

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Body(),
    );
  }
}