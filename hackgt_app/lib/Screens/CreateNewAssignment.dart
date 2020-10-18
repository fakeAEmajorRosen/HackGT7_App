import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackgt_app/utilities/c.dart';
import 'package:hackgt_app/Screens/SignUp.dart';
import 'package:hackgt_app/Screens/HomeScreen.dart';
// import 'package:flutter_app/Screens/SelectScreen.dart';
// import 'package:flutter_app/Screens/SignUpScreen.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class CreateNewAssignment extends StatefulWidget {
  @override
  _CreateNewAssignmentState createState() => _CreateNewAssignmentState();
}

class _CreateNewAssignmentState extends State<CreateNewAssignment> {
  bool _rememberMe = false;

  Widget _buildNameTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Name',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.book,
                color: Colors.black,
              ),
              hintText: 'Assignment Name',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
  Widget _buildTimeTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Name',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock_clock,
                color: Colors.black,
              ),
              hintText: '2020/01/01',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
  Widget _buildHomeBtn() {
    return RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return HomeScreen();
            },
          ),
        );
      },
      padding: EdgeInsets.all(10.0),
      shape: CircleBorder(),
      color: Colors.orange,
      child: Icon(Icons.home),
    );
  }
  Widget _buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        // onPressed: () => print('Login Button Pressed'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return HomeScreen();
              },
            ),
          );
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.orange,
        child: Text(
          'Done!',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
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
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '\n Create New Assignment!',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Text(
                        '\n Enter Assignment Name',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'OpenSans',
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      _buildNameTF(),
                      SizedBox(height: 30.0),
                      Text(
                        '\n Enter a time:',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'OpenSans',
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      _buildTimeTF(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildLoginBtn(),
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Expanded(
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: _buildHomeBtn(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // _buildSignInWithText(),
                      // _buildSocialBtnRow(),

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