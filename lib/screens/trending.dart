import 'dart:math';

import 'package:flutter/material.dart';

class Trending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/images/logo-pink.png",
                    ),
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  ),

                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Ami Koehler",
                        style: TextStyle(

                        ),
                      ),

                      Text(
                        "3 minutes ago",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),

                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "@somehandle",
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                        ),
                      ),

                      Text(
                        "in Los Angeles",
                        style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                    ],
                  ),

                  trailing: Icon(
                    Icons.pin_drop,
                  ),
                ),

                Container(
                  height: 170,
                  color: Colors.primaries[Random().nextInt(17)],
                  child: Center(
                    child: Image.asset(
                      "assets/images/logo.png",
                    ),
                  ),
                ),

                ListTile(
                  title: Text(
                    "Vivamus suscipit tortor eget felis porttitor volutpat."
                        " Lorem ipsum dolor sit amet, consectetur.",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w200,
                    ),
                  ),

                  trailing: Icon(
                    Icons.arrow_forward,
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
      ),
    );
  }
}
