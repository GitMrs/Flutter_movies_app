import 'package:flutter/material.dart';
import 'package:move_app/constants.dart';
import 'package:move_app/screens/home/components/genres.dart';
import 'package:move_app/screens/home/components/movie_carousel.dart';
import 'category.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // scroll on small device
    return SingleChildScrollView(
      child: Container(
        child: Column(children: <Widget>[
          CategoryList(),
          Genres(),
          SizedBox(
            height: kDefaultPadding,
          ),
          MovieCarousel()
        ]),
      ),
    );
  }
}
