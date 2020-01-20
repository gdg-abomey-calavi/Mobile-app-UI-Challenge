import 'package:flutter/material.dart';
import 'package:gdg_calavi_ui/screens/notifications.dart';
import 'package:gdg_calavi_ui/screens/trending.dart';
import 'package:gdg_calavi_ui/util/consts.dart';
import 'package:gdg_calavi_ui/widgets/drawer.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  PageController _pageController;
  int _page = 0;
  String title = "My Picks";

  List nav = [
    {
      "icon": Icons.home,
      "title": "Trending",
      "appBar": true,
    },
    {
      "icon": Icons.trending_up,
      "title": "Trending",
      "appBar": true,
    },
    {
      "icon": Icons.pin_drop,
      "title": "Map",
      "appBar": false,
    },
    {
      "icon": Icons.notifications,
      "title": "My Picks",
      "appBar": false,
    },
  ];


  IconData trail = Icons.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,

      appBar: nav[_page]["appBar"]?AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          title,
        ),
        leading: IconButton(
          onPressed: ()=>_scaffoldKey.currentState.openDrawer(),
          icon: Icon(
            Icons.menu,
          ),
        ),

        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(
              trail,
              color: Colors.white,
            ),
          ),
        ],
      ):null,
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: <Widget>[
          Trending(),
          Container(),
          Container(),
          Notifications(),
        ],
      ),

      drawer: MyDrawer(),

      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: Theme.of(context).scaffoldBackgroundColor,
          // sets the active color of the `BottomNavigationBar` if `Brightness` is light
          primaryColor: Theme.of(context).primaryColor,
          textTheme: Theme
              .of(context)
              .textTheme
              .copyWith(caption: TextStyle(color: Colors.grey[500]),
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: Constants.map<BottomNavigationBarItem>(
            nav,
                (index, i){
              return BottomNavigationBarItem(
                icon: Icon(
                  i['icon'],
                ),
                title: Container(height: 0.0),
              );
            },
          ),
          onTap: (val){
            navigationTapped(val);
            setState(() {
              title = nav[val]['title'];
              trail = nav[val]['icon'];
            });
          },
          currentIndex: _page,
        ),
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }
}