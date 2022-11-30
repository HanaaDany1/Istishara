import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:curved_splash_screen/curved_splash_screen.dart';
import 'package:hello_world/authentication.dart';
import 'package:hello_world/home_page.dart';
import 'package:hello_world/who_ru.dart';

// ignore: camel_case_types
class Splash_Screen extends StatefulWidget {
  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

// ignore: camel_case_types
class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: CurvedSplashScreen(
              screensLength: splashContent.length,
              screenBuilder: (index) {
                return SplashContent(
                  title: splashContent[index]["title"],
                  image: splashContent[index]["image"],
                  text: splashContent[index]["text"],
                );
              },
              bottomSheetColor: Colors.green,
              forwardColor: Colors.orange,
              onSkipButton: () {
                print("Ends");

                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => WhoRU()));
              }),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterFloat,
          floatingActionButton: Container(
            child: Center(
              child: Builder(
                builder: (context) => FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => WhoRU()));
                  },
                  label: Text('Home'),
                  icon: Icon(Icons.home),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  backgroundColor: Colors.green,

                  // color: Colors.lightGreen,
                ),
              ),
            ),
            alignment: Alignment.bottomLeft,
          )),
    );
  }
}

class SplashContent extends StatelessWidget {
  final String title;
  final String text;
  final String image;

  const SplashContent({
    Key key,
    @required this.title,
    @required this.text,
    @required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                Container(
                  height: 200,
                  child: Image.asset(image),
                ),
                SizedBox(height: 60),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 19,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

final splashContent = [
  {
    "title": "Best services",
    "text": "Get the best services",
    "image": "assets/Happy.png",
  },
  {
    "title": "Explore our app",
    "text": "Enjoy the easy navigation through our app",
    "image": "assets/logo1.png",
  },
  {
    "title": "At Any time.",
    "text": "our agents are available 24/7",
    "image": "assets/logo2.png"
  },
];
