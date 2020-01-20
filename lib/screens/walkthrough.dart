import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gdg_calavi_ui/screens/login.dart';
import 'package:gdg_calavi_ui/util/consts.dart';
import 'package:page_transition/page_transition.dart';

class Walkthrough extends StatefulWidget {
  @override
  _WalkthroughState createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> {
  int _current = 0;
  List intros = List.generate(4, (index)=>"Discover the world");

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        return true;
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20,),

                CarouselSlider(
                  height: MediaQuery.of(context).size.height/1.4,
                  items: Constants.map<Widget>(
                    intros, (index, i){
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(width: MediaQuery.of(context).size.width,),
                              Image.asset(
                                "assets/images/logo-pink.png",
                                height: MediaQuery.of(context).size.height/2.4,
                              ),

                              SizedBox(height: 10,),

                              Text(
                                i,
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 10,),

                              Container(
                                height: 3,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).accentColor,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey[500],
                                      offset: Offset(0.0, 1.5),
                                      blurRadius: 1.0,
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 20,),

                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 40),
                                child: Text(
                                  "Create a network around you and share your adventures witht he world....",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w200,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                  ).toList(),
                  autoPlay: false,
                  viewportFraction: 1.0,
                  onPageChanged: (index) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),

                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: Constants.map<Widget>(intros, (index, url) {
                    return Padding(
                      padding: EdgeInsets.only(right: 5.0),
                      child: Container(
                        width: _current == index?10.0:5.0,
                        height: 5.0,
                        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: _current == index
                              ? Constants.grey
                              : Colors.transparent,
                          border: Border.all(
                            color: Constants.grey,
                          ),
                        ),
                      ),
                    );
                  }),
                ),

                SizedBox(height: 30,),

                Center(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: Login(),
                        ),
                      );
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          "Demarrez",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),

                        SizedBox(width: 20,),

                        Icon(
                          Icons.arrow_forward,
                          color: Theme.of(context).accentColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
