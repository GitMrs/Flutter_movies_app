import 'package:flutter/material.dart';
import 'package:move_app/components/genre_card.dart';
import 'package:move_app/constants.dart';

class Genres extends StatelessWidget {
  const Genres({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> genre = [
      'Action',
      'Crime',
      'Comedy',
      'Drama',
      'Horror',
      'Animation'
    ];
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genre.length,
        itemBuilder: (context, index) => GenreCard(genre: genre[index]),
      ),
    );
  }
}
