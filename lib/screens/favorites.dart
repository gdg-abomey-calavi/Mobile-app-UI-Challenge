import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.countBuilder(
        primary: false,
        crossAxisCount: 4,
        staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        itemBuilder: (BuildContext context, int index) {

          return Card(
            elevation: 4,
            child: Column(
              children: <Widget>[
                Container(
                  height: double.parse(Random().nextInt(300).toString()),
                  color: Colors.primaries[Random().nextInt(17)],
                  child: Center(
                    child: Image.asset(
                        "assets/images/logo.png",
                    ),
                  ),
                ),

                ListTile(
                  leading: Icon(
                    Icons.star,
                    color: Theme.of(context).accentColor,
                  ),

                  title: Text(
                    "Skate",
                  ),

                  trailing: Icon(
                    Icons.more_horiz,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
