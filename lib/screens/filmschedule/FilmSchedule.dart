import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilmSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Film Schedule"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back to Login!'),
        ),
      ),
    );
  }
}