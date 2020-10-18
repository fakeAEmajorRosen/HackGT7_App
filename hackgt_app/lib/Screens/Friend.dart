import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackgt_app/Screens/ChatRoom.dart';
import 'package:hackgt_app/Screens/HomeScreen.dart';

class Friends extends StatefulWidget {
  @override
  _FriendsState createState() => _FriendsState();
}
class _FriendsState extends State<Friends> {

  Widget _Friend1Btn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      width: double.infinity,
    //   decoration: BoxDecoration(
    //     color: Colors.white,
    //     shape: RectangleBorder(
    // borderRadius: BorderRadius.circular(30.0),
    //   ),
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ChatRoom();
              },
            ),
          );

        },
        padding: EdgeInsets.all(30.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
            side: BorderSide(color: Colors.orange, width:5),
          //color: Colors.orange,
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
                      fontSize: 34.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                  TextSpan(text: 'Hi!', style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 1.5,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                ],
              ),
                  // 'John Doe \n   Hi',
                  // style: TextStyle(
                  //
                  //   color: Colors.orange,
                  //   letterSpacing: 1.5,
                  //   fontSize: 34.0,
                  //   fontWeight: FontWeight.bold,
                  //   fontFamily: 'OpenSans',
                  // ),
            ),
          ],
        ),

        ),

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
  Widget _Friend2Btn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      width: double.infinity,
      //   decoration: BoxDecoration(
      //     color: Colors.white,
      //     shape: RectangleBorder(
      // borderRadius: BorderRadius.circular(30.0),
      //   ),
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          // Do stuff
        },
        padding: EdgeInsets.all(30.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(color: Colors.orange, width:5),
          //color: Colors.orange,
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
                  TextSpan(text: 'Buzz \n\n', style: TextStyle(
                    color: Colors.orange,
                    letterSpacing: 1.5,
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                  ),
                  TextSpan(text: 'How''s your exam?', style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 1.5,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                  ),
                ],
              ),
              // 'John Doe \n   Hi',
              // style: TextStyle(
              //
              //   color: Colors.orange,
              //   letterSpacing: 1.5,
              //   fontSize: 34.0,
              //   fontWeight: FontWeight.bold,
              //   fontFamily: 'OpenSans',
              // ),
            ),
          ],
        ),

      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chat',
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
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 50.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Text(
                        'Chat',
                        style: TextStyle(
                          color: Colors.orange,
                          fontFamily: 'OpenSans',
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      //DelayedDisplay(),
                      _Friend1Btn(),
                      _Friend2Btn(),
                      //_buildHomeBtn(),
                      //SizedBox(height:70.0),
                      // _buildSignInWithText(),
                      // _buildSocialBtnRow(),
                    ],
                  ),
                ),
              ),Container(
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
            ],
          ),
        ),
      ),
    );

  }
}