import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackgt_app/Screens/Friend.dart';
import 'package:hackgt_app/utilities/c.dart';
import 'package:hackgt_app/Screens/SignUp.dart';
// import 'package:flutter_app/Screens/SelectScreen.dart';
// import 'package:flutter_app/Screens/SignUpScreen.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class sameClassPpl extends StatefulWidget {
  @override
  _sameClassPplState createState() => _sameClassPplState();
}
class _sameClassPplState extends State<sameClassPpl> {
  // List<String> names = ["Buzz", "George P Burdell", "Jone Doe"];

  Widget _People1Btn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          // Do stuff
        },
        padding: EdgeInsets.all(30.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(color: Colors.orange, width:5),
        ),
        //ShapeBorder: ,
        color: Colors.white,
        //children: Stack(),
        child: Row(
          children: <Widget>[
            Image(image: AssetImage("assets/user-profile.png"), height: 40.0),
            Padding(padding: EdgeInsets.all(15.0),),
            Text.rich(
              TextSpan(
                //text: 'Hello', // default text style
                children: <TextSpan>[
                  TextSpan(text: 'George P Burdell \n\n', style: TextStyle(
                    color: Colors.orange,
                    letterSpacing: 1.5,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                  ),
                  TextSpan(text: 'Currently Taking:\nCS 1331\nMATH 1552', style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1.5,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),

                  ),
                ],
              ),

            ),
          ],
        ),

      ),

    );
  }

  Widget _People2Btn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          // Do stuff
        },
        padding: EdgeInsets.all(30.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(color: Colors.orange, width:5),
        ),
        //ShapeBorder: ,
        color: Colors.white,
        //children: Stack(),
        child: Row(
          children: <Widget>[
            Image(image: AssetImage("assets/user-profile.png"), height: 40.0),
            Padding(padding: EdgeInsets.all(15.0),),
            Text.rich(
              TextSpan(
                //text: 'Hello', // default text style
                children: <TextSpan>[
                  TextSpan(text: 'Buzz Buzz \n\n', style: TextStyle(
                    color: Colors.orange,
                    letterSpacing: 1.5,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                  ),
                  TextSpan(text: 'Currently Taking:\nCHEM 2311\nCS 1332', style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1.5,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),

                  ),
                ],
              ),

            ),
          ],
        ),

      ),

    );
  }

  Widget _People3Btn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Friends();
              },
            ),
          );
        },
        padding: EdgeInsets.all(30.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(color: Colors.orange, width:5),
        ),
        //ShapeBorder: ,
        color: Colors.white,
        //children: Stack(),
        child: Row(
          children: <Widget>[
            Image(image: AssetImage("assets/user-profile.png"), height: 40.0),
            Padding(padding: EdgeInsets.all(15.0),),
            Text.rich(
              TextSpan(
                //text: 'Hello', // default text style
                children: <TextSpan>[
                  TextSpan(text: 'John Doe \n\n', style: TextStyle(
                    color: Colors.orange,
                    letterSpacing: 1.5,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                  ),
                  TextSpan(text: 'Currently Taking:\nPHYS 2211\nCS 1371', style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1.5,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),

                  ),
                ],
              ),

            ),
          ],
        ),

      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 40.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'We found others who are in the same class with you!',
                        style: TextStyle(
                          color: Colors.orange,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 10.0),
                      _People1Btn(),
                      SizedBox(height: 30.0),
                      _People2Btn(),
                      SizedBox(
                        height: 30.0,
                      ),
                      _People3Btn(),
                      // _buildPasswordTF(),
                      // _buildForgotPasswordBtn(),
                      // _buildRememberMeCheckbox(),
                      // _buildLoginBtn(),
                      // // _buildSignInWithText(),
                      // // _buildSocialBtnRow(),
                      // _buildSignupBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}