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


  bool _rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            children: <Widget>[
                 Text(
                    '\n We found others who are\n in the same class with\n you!',
                    style: TextStyle(
                      color: Colors.orange,
                      fontFamily: 'OpenSans',
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              SizedBox(height: 50.0),
              ButtonTheme(
                minWidth: 100,
                  height: 50,
                  child: RaisedButton(
                    child: Text(' Geogre P Burdell \n Currently Taking: \n CS1331\n MATH1552',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.5,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSans',
                        )),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: Colors.orange,
                  )
              ),
              SizedBox(height: 50.0),
              ButtonTheme(
                  minWidth: 100,
                  height: 50,
                  child: RaisedButton(
                    child: Text(' Buzz Buzz \n Currently Taking: \n CHEM2311\n CS1332',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.5,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSans',
                        )),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: Colors.orange,
                  )
              ),
              SizedBox(height: 50.0),
              ButtonTheme(
                  minWidth: 100,
                  height: 50,
                  child: RaisedButton(
                    child: Text(' John Doe \n Currently Taking: \n PHYS2211\n CS1332',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.5,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSans',
                        )),
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
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: Colors.orange,
                  )
              ),

                      ],
                    ),
                  ),
              ),
              );


  }
}