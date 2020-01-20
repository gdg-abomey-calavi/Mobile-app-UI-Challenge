import 'package:flutter/material.dart';
import 'package:gdg_calavi_ui/screens/calendar.dart';
import 'package:gdg_calavi_ui/screens/inbox.dart';
import 'package:page_transition/page_transition.dart';

class MyDrawer extends StatelessWidget {
  final List drawer = [
    {
      "title": "Inbox",
      "count": 19,
      "isLead": false,
    },
    {
      "title": "Calendar",
      "count": 12,
      "isLead": false,
    },
    {
      "title": "Stats",
      "count": 0,
      "isLead": false,
    },
    {
      "title": "Inbox",
      "count": 19,
      "isLead": false,
    },
    {
      "title": "Map",
      "count": 0,
      "isLead": true,
    },
    {
      "title": "Settings",
      "count": 0,
      "isLead": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      elevation: 0,
      child: Container(
        color: Theme.of(context).primaryColor,
        child: ListView(
          padding: EdgeInsets.all(40),
          children: <Widget>[

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Johanne DOE",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                Text(
                  "johanne@contact.com",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                  ),
                ),
              ],
            ),


            Padding(
              padding: EdgeInsets.only(right: 130, top: 10),
              child: Container(
                height: 3,
                width: 50,
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),

            SizedBox(height: 40,),

            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: drawer.length,
              itemBuilder: (BuildContext context, int index) {
                Map i = drawer[index];

                return ListTile(
                  onTap: index == 0
                      ?(){
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: Inbox(),
                      ),
                    );
                  }:index == 1
                      ?(){
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: Calendar(),
                      ),
                    );
                  }:(){},
                  contentPadding: EdgeInsets.all(0),
                  title: Row(
                    children: <Widget>[
                      i['isLead']
                          ? Container(
                        height: 30,
                        width: 2,
                        color: Theme.of(context).accentColor,
                      )
                          : SizedBox(),

                      i['isLead']
                          ? SizedBox(width: 20,)
                          : SizedBox(),

                      Text(
                        i['title'],
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),

                      SizedBox(width: 20,),

                      i['count']>=1?Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            "${i['count']}",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ):SizedBox(),
                    ],
                  ),
                );
              },

            ),

          ],
        ),
      ),
    );
  }
}
