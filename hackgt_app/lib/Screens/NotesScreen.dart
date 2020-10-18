import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackgt_app/utilities/c.dart';
import 'package:hackgt_app/Screens/ShareNotesScreen.dart';
import 'package:hackgt_app/Screens/HomeScreen.dart';

class NotesScreen extends StatefulWidget {
  @override
  _NotesScreenState createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {

  Widget _buildClassBtn(String className) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                //return ClassScreen(); //SPECIFIC FOR CLASS NOTES
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
          className, //SPECIFIC FOR STUDENT CLASSES
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

  Widget _buildShareNotesBtn() {
    return RaisedButton(
      elevation: 5.0,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ShareNotesScreen();
            },
          ),
        );
      },
      padding: EdgeInsets.all(15.0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(color: Colors.orange, width: 5)
      ),
      color: Colors.white,
      child: Text(
        'Share Notes',
        style: TextStyle(
          color: Colors.black,
          letterSpacing: 1.5,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'OpenSans',
        ),
      ),
    );
  }

  Widget _buildClassBtns(List<String> classNames) {
    return Container(
      height: 400,
        child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Column(
                children: <Widget> [
                  for (String each in classNames) (
                      _buildClassBtn(each)
                  )
                ]
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

  @override
  Widget build(BuildContext context) {
    List<String> classNames = new List<String>(); // FIX THIS; GET LIST OF CLASSES FROM SOMEWHERE ELSE
    classNames.add("Class 1");
    classNames.add("Class 2");
    classNames.add("Class 3");

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
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'My Notes',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      _buildClassBtns(classNames), //NEED TO FIGURE OUT HOW TO GET LIST OF CLASS NAMES
                      SizedBox(height: 30.0),
                      _buildShareNotesBtn(),
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                  ]
                )
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}