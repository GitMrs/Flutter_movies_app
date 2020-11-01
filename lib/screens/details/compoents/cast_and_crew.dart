import 'package:flutter/material.dart';
import 'package:move_app/constants.dart';
import 'package:move_app/screens/details/compoents/cast_cart.dart';

class CastAndCrew extends StatelessWidget {
  final List casts;
  const CastAndCrew({
    Key key,
    this.casts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        children: <Widget>[
          Text(
            "Cast & Crew",
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: casts.length,
              itemBuilder: (context, index) => CastCard(cast: casts[index]),
            ),
          )
        ],
      ),
    );
  }
}
