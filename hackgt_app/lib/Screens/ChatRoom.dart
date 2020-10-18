import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackgt_app/utilities/c.dart';
import 'package:hackgt_app/Screens/SignUp.dart';
import 'package:hackgt_app/Screens/HomeScreen.dart';
import 'package:hackgt_app/Screens/Friend.dart';
// import 'package:flutter_app/Screens/SelectScreen.dart';
// import 'package:flutter_app/Screens/SignUpScreen.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  bool _rememberMe = false;

  Widget _buttons(){
    return Container(
      height: double.infinity,

          child: Row(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    //child:_buildArrowBtn()
                ),
                Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                        'Chat with Buzz',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.5,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSans',
                        )
                    )
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.line_weight_sharp)
                ),
              ]
          )
      );

  }
  Widget _buildNameTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.chat,
                color: Colors.black,
              ),
              hintText: 'Start Chating with Buzz',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
    // return Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: <Widget>[
    //     Text(
    //       'Name',
    //       style: kLabelStyle,
    //     ),
    //     SizedBox(height: 10.0),
    //     Container(
    //       alignment: Alignment.centerLeft,
    //       decoration: kBoxDecorationStyle,
    //       height: 60.0,
    //       child: TextField(
    //         keyboardType: TextInputType.text,
    //         style: TextStyle(
    //           color: Colors.black,
    //           fontFamily: 'OpenSans',
    //         ),
    //         decoration: InputDecoration(
    //           border: InputBorder.none,
    //           contentPadding: EdgeInsets.only(top: 14.0),
    //           prefixIcon: Icon(
    //             Icons.chat,
    //             color: Colors.black,
    //           ),
    //           hintText: 'Start Chating with Buzz',
    //           hintStyle: kHintTextStyle,
    //         ),
    //       ),
    //     ),
    //   ],
    // );
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
          'LOGIN',
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

  Widget _buildSignupBtn() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return SignUp();
            },
          ),
        );
      },
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an Account? ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
  // Widget _buildArrowBtn() {
  //   return Container(
  //     padding: EdgeInsets.only(left: 10.0),
  //      alignment: Alignment(-1.0, 1.0),
  //     child: RaisedButton(
  //     padding: EdgeInsets.all(10),
  //     onPressed: () {
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) {
  //             return Friends();
  //           },
  //         ),
  //       );
  //     },
  //     //padding: EdgeInsets.all(10.0),
  //     shape: CircleBorder(),
  //     color: Colors.orange,
  //     child: Icon(Icons.arrow_back),
  //   ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'John Doe',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 34.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
        backgroundColor: Colors.orange,
      ),
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
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // Text(
                      //   'REMOTE PARTNER',
                      //   style: TextStyle(
                      //     color: Colors.orange,
                      //     fontFamily: 'OpenSans',
                      //     fontSize: 35.0,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
                      // Text(
                      //   '\nSign in',
                      //   style: TextStyle(
                      //     color: Colors.black,
                      //     fontFamily: 'OpenSans',
                      //     fontSize: 25.0,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),




                      SizedBox(height: 300.0),
                      _buildNameTF(),
                      SizedBox(
                        height: 30.0,
                      ),
                     // _buildArrowBtn(),
                      // _buildPasswordTF(),
                      // _buildForgotPasswordBtn(),
                      // _buildRememberMeCheckbox(),
                      // _buildLoginBtn(),
                      // _buildgoogleLoginBtn(),
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



