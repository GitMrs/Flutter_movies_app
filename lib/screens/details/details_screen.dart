import 'package:flutter/material.dart';
import 'package:move_app/models/movie.dart';
import 'package:move_app/screens/details/compoents/body.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;
  const DetailsScreen({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        movie: movie,
      ),
    );
  }
}
