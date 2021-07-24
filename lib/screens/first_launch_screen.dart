import 'package:explore_hacks_2021/widgets/wave_widget.dart';
import 'package:flutter/material.dart';

class FirstLaunchScreen extends StatefulWidget {
  @override
  _FirstLaunchScreenState createState() => _FirstLaunchScreenState();
}

class _FirstLaunchScreenState extends State<FirstLaunchScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      color: Colors.white,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          /*
           * Background wave
           */
          WaveWidget(
            size: size,
            yOffset: size.height / 2.0,
            gradientColors: [Color(0xFF5E1689), Color(0xFFCC78FF)],
          ),

          /*
           * Text
           */
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 250),
              child: Text(
                "Welcome to\nApp",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Geometria",
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
            ),
          ),

          /*
           * Logo
           */
          Positioned(
            top: size.height / 4 - 30, // 1/4th down the screen
            child: Image(
              image: AssetImage("assets/images/logo.png"),
              width: 120,
              height: 120,
            ),
          ),

          /*
           * Start button
           */
          Positioned(
            bottom: 30,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 4,
                    offset: Offset(0.0, 4.0),
                  ),
                ],
              ),
              child: TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.only(
                        top: 8.0, bottom: 8.0, left: 32.0, right: 32.0),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFA12EE8)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                onPressed: () {
                  /*(Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => ),
                  );*/
                },
                child: Text(
                  "Start",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
