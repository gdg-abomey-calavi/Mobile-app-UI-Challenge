import 'package:flutter/material.dart';
import 'package:gdg_calavi_ui/screens/main_screen.dart';
import 'package:gdg_calavi_ui/screens/sign_up.dart';
import 'package:gdg_calavi_ui/util/consts.dart';
import 'package:page_transition/page_transition.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: ()=>Navigator.pop(context),
          icon: Icon(
            Icons.clear,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Sign In",
          style: TextStyle(
            color: Theme.of(context).textTheme.title.color,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SizedBox(width: MediaQuery.of(context).size.width,),

              Image.asset(
                "assets/images/logo-pink.png",
                height: 150,
                width: 150,
              ),

              SizedBox(height: 30,),

              Container(
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Constants.grey,
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "E-mail",
                        labelText: "E-mail",
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                height: 60,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Constants.grey
                    ),
                    left: BorderSide(
                        color: Constants.grey
                    ),
                    right: BorderSide(
                        color: Constants.grey
                    ),
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        labelText: "Password",
                      ),
                      obscureText: true,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Theme.of(context).accentColor.withOpacity(0.6),
                          Theme.of(context).accentColor,
                        ],
                      ),
                    ),
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: MainScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 5,),
                  Container(
                    height: 60,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Theme.of(context).accentColor.withOpacity(0.6),
                          Theme.of(context).accentColor,
                        ],
                      ),
                    ),
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: MainScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              FlatButton(
                onPressed: (){},
                child: Text(
                  "Forgot your details?"
                ),
              ),

              SizedBox(height: 60,),
              FlatButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: SignUp(),
                    ),
                  );
                },
                child: Text(
                  "Create new account",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
