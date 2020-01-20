import 'package:flutter/material.dart';
import 'package:gdg_calavi_ui/util/consts.dart';

class SignUp extends StatelessWidget {
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
          "Sign Up",
          style: TextStyle(
            color: Theme.of(context).textTheme.title.color,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height-120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
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

                SizedBox(height: 5,),
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
                          hintText: "Nom",
                          labelText: "Nom",
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
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
                          hintText: "Prenom",
                          labelText: "Prenom",
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
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
                          hintText: "Password",
                          labelText: "Password",
                        ),
                      ),
                    ),
                  ),
                ),SizedBox(height: 5,),
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
                          hintText: "Confirm password",
                          labelText: "Confirm password",
                        ),
                      ),
                    ),
                  ),
                ),


                SizedBox(height: 50,),

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
                        onPressed: (){},
                        child: Text(
                          "Sign Up",
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
                        onPressed: (){},
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
