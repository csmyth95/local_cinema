import 'package:eye_cinema_app/screens/filminfo/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FilmInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Film Info";

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Body(),
    );
  }
}