import 'package:eye_cinema_app/screens/filminfo/components/timedisplay.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilmsShowing extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final timesToDisplay = 10;
    final itemsPerColumn = 3;

    return GridView.count(
      crossAxisCount: itemsPerColumn,
      shrinkWrap: true, // required for bounded height
      physics: ScrollPhysics(), // Enable so page can scroll if required
      padding: const EdgeInsets.all(32),

      children: List.generate(timesToDisplay, (index) {
        return Container(
          height: 60,
          width: 120,
          padding: const EdgeInsets.all(8),
          child: TimeDisplay(), // TODO Add random hours & minutes time for demo purposes
        );
      }),
    );
  }
}