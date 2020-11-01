import 'package:flutter/material.dart';
import 'package:move_app/constants.dart';
import 'package:move_app/models/movie.dart';
import 'package:move_app/screens/details/compoents/backdrop_Rating.dart';
import 'package:move_app/screens/details/compoents/cast_and_crew.dart';
import 'package:move_app/screens/details/compoents/genres.dart';
import 'package:move_app/screens/details/compoents/titleduratio_fabBth.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      // scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BackdropRating(size: size, movie: movie),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          TitleDurationAndFabBth(movie: movie),
          Genres(movie: movie),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: kDefaultPadding / 2, horizontal: kDefaultPadding),
            child: Text(
              "Plot Summary",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              movie.plot,
              style: TextStyle(color: Color(0xff737599)),
            ),
          ),
          CastAndCrew(
            casts: movie.cast,
          )
        ],
      ),
    );
  }
}
