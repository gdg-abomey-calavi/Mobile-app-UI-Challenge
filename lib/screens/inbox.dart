import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Inbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "Inbox",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),

            SizedBox(width: 15,),

            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  "12",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),

        actions: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/logo-pink.png",
            ),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          ),
        ],
      ),

      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(
              Icons.add_circle,
              size: 10,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 5,),
                Text(
                  "Sheldon Murphy",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                ),


                Text(
                  "Design Updates",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor,
                  ),
                ),

                Text(
                  "Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit aliquet elit, eget tincidun.",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            trailing: Text(
              "11:32 AM",
              style: TextStyle(
                fontWeight: FontWeight.w200,
              ),
            ),
          );
        },
      ),
      floatingActionButton: SpeedDial(
        // both default to 16
        marginRight: 18,
        marginBottom: 20,
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22.0),
        closeManually: false,
        curve: Curves.bounceIn,
        overlayColor: Colors.transparent,
        overlayOpacity: 0.5,
        tooltip: 'Speed Dial',
        heroTag: 'speed-dial-hero-tag',
        backgroundColor: Theme.of(context).accentColor,
        foregroundColor: Colors.white,
        elevation: 8.0,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
            child: CircleAvatar(
              backgroundImage: AssetImage(
                "assets/images/logo.png",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
