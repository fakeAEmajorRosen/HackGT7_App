import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackgt_app/utilities/c.dart';
import 'package:hackgt_app/Screens/HomeScreen.dart';

class ShareNotesScreen extends StatefulWidget {
  @override
  _ShareNotesScreenState createState() => _ShareNotesScreenState();
}

class _ShareNotesScreenState extends State<ShareNotesScreen> {

  Widget _buildUploadFromDeviceBtn() {
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
                //return UploadFromDeviceScreen();
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Icon(Icons.file_upload),
            Text(
              '  Upload from Device',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 1.5,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'OpenSans',
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildShareToDriveBtn() {
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
                //return StudySessionScreen();
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Icon(Icons.add_to_drive),
              Text(
                '  Upload from Drive',
                style: TextStyle(
                color: Colors.black,
                letterSpacing: 1.5,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'OpenSans',
                ),
              )
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
                        'Share my notes!',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      _buildUploadFromDeviceBtn(),
                      _buildShareToDriveBtn()
                    ],
                  ),
                ),
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