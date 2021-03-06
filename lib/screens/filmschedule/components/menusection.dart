import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// TODO make this a reusable widget
class MenuSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BackButton(color: color,),

          // TODO Add interactivity for menu button - GFDrawer? https://docs.getflutter.dev/gf-drawer
          _buildMenuButtonColumn(color, Icons.menu),
        ],
      ),
    );
  }

  Column _buildMenuButtonColumn(Color color, IconData icon) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
      ],
    );
  }
}