import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Description:
///  - Displays a time within a rectangular box
///  - Only hours and minutes
class TimeDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildTimeBox(context);
  }

  // TODO Add rectangular container widget
  Center _buildTimeBox(BuildContext context) {
    return Center(
      child: Text(
        _getTimeFromDateTime(_buildTimeEntry()),
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  DateTime _buildTimeEntry() {
    var dateTime = DateTime.now();
    // dateTime.add(new Duration(hours: index, minutes: 15));

    return dateTime;
  }

  String _getTimeFromDateTime(DateTime dateTime) {
    final hour = dateTime.hour;
    final minutes = dateTime.minute;
    return hour.toString() + ":" + minutes.toString();
  }
}