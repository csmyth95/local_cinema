import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/components/image/gf_image_overlay.dart';

class FilmsShowing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final filmsToDisplay = 10;
    final itemsPerColumn = 2;

    return GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: itemsPerColumn,

      // NOTE: shrinkWrap is required for bounded height. Without it, the following error is thrown:
      //  - Vertical viewport was given unbounded height.
      //
      //Viewports expand in the scrolling direction to fill their container.
      // In this case, a vertical viewport was given an unlimited amount of vertical space in which to expand.
      // This situation typically happens when a scrollable widget is nested inside another scrollable widget.
      //
      //If this widget is always nested in a scrollable widget there is no need to use a viewport because there
      // will always be enough vertical space for the children. In this case, consider using a Column instead. Otherwise,
      // consider using the "shrinkWrap" property (or a ShrinkWrappingViewport) to size the height of the viewport
      // to the sum of the heights of its children.
      shrinkWrap: true,
      physics: ScrollPhysics(),
      padding: const EdgeInsets.all(32),

      children: List.generate(filmsToDisplay, (index) {
        return Container(
            padding: const EdgeInsets.all(8),
            child: GFImageOverlay(
              height: 400,
              width: 80,
              shape: BoxShape.rectangle,
              image: AssetImage('lib/img/films/gunsAkimbo.png'),
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            )
        );
      }),
    );
  }
}