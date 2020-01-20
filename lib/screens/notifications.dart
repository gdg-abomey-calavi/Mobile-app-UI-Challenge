import 'package:flutter/material.dart';
import 'package:gdg_calavi_ui/screens/favorites.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Picks"),
        elevation: 0.7,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.menu,
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Theme.of(context).accentColor,
          tabs: <Widget>[
            Tab(
              text: "Latest",
            ),
            Tab(
              text: "Favorites",
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.notifications),
          ),
        ],
      ),

      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Container(),
          Favorites(),
        ],
      ),
    );
  }
}
