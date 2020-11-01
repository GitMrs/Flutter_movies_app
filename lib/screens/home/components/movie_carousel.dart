import 'package:flutter/material.dart';
import 'package:move_app/constants.dart';
import 'package:move_app/models/movie.dart';
import 'dart:math' as math;
import 'movie_card.dart';

class MovieCarousel extends StatefulWidget {
  MovieCarousel({Key key}) : super(key: key);

  @override
  _MovieCarouselState createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  PageController _pageController;
  int initialPage = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
        // so that we can have samll portion shown on left and right side;
        viewportFraction: 0.8,
        // by default our movies poster;
        initialPage: initialPage);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
            onPageChanged: (val) {
              setState(() {
                initialPage = val;
              });
            },
            controller: _pageController,
            physics: ClampingScrollPhysics(),
            itemCount: movies.length,
            itemBuilder: (context, index) => buildMovieSilder(index)),
      ),
    );
  }

  Widget buildMovieSilder(int index) => AnimatedBuilder(
        animation: _pageController,
        builder: (context, child) {
          double value = 0;
          if (_pageController.position.haveDimensions) {
            value = index - _pageController.page;
            // we use 0.038 because 180*0.038 = 7 almost and we need to rotate our poster 7 degree
            // we use clamp so that our value vary form  -1 to 1;
            value = (value * 0.038).clamp(-1, 1);
          }
          return AnimatedOpacity(
            duration: Duration(microseconds: 350),
            opacity: initialPage == index ? 1 : 0.4,
            child: Transform.rotate(
              angle: math.pi * value,
              child: MovieCard(
                movie: movies[index],
              ),
            ),
          );
        },
      );
}
