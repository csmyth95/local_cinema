import 'package:flutter/cupertino.dart';
import 'package:getflutter/getflutter.dart';

class AdCarousel extends StatefulWidget {
  AdCarousel({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AdCarouselPageState createState() => _AdCarouselPageState();
}

class _AdCarouselPageState extends State<AdCarousel> {

  @override
  Widget build(BuildContext context) {
    final filmsToDisplay = 4;

    return GFCarousel(
      pagination: true,
      autoPlay: true,
      autoPlayInterval: const Duration(seconds: 8),
      items: List.generate(filmsToDisplay, (index) {
          return Container(
            margin: EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: GFImageOverlay(
                height: 200,
                width: 1000,
                shape: BoxShape.rectangle,
                image: AssetImage('lib/img/films/eye_logo.png'),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
            ),
          );
        },
      ),
      onPageChanged: (index) {
        setState(() {
          index;
        });
      },
    );
  }
}