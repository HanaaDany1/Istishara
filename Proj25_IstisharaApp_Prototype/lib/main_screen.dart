import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/widgets.dart';

import 'CSS.dart';
import 'home_page.dart';
import 'manage_pfp.dart';
import 'settings.dart';

// ignore: camel_case_types
class Main_Screen extends StatefulWidget {
  @override
  _Main_ScreenState createState() => _Main_ScreenState();
}

// ignore: camel_case_types
class _Main_ScreenState extends State<Main_Screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent,

        body: Center(
          child: Column(
            children: <Widget>[
              Builder(
                builder: (context) => RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Settings()));
                  },
                  child: Text('Setting >>'),
                ),
              ),

              Builder(
                builder: (context) => RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ManagePFP()));
                  },
                  child: Text('PFP >>'),
                ),
              ),

              Builder(
                builder: (context) => RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Splash_Screen()));
                  },
                  child: Text('Splash Screen '),
                ),
              ),
              // SizedBox(
              //   height: 300,
              //   child: FloatingActionButton(
              //       backgroundColor: Colors.green,
              //       child: Text('Page 2'),
              //       onPressed: () => Navigator.push(
              //             context,
              //             new MaterialPageRoute(builder: (context) => Page2()),
              //           )),
              // ),
            ],
          ),
        ),

        appBar: AppBar(
            automaticallyImplyLeading: true,
            // title: Text('Istishara'),
            title: Image.asset("assets/logo.png"),
            backgroundColor: Colors.green,
            toolbarHeight: 80,
            

          ),
        // print("Pressed");
        // automaticallyImplyLeading: false,



        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.green,
          color: Colors.green,
          items: <Widget>[
            // IconButton(
            //     icon:
            Icon(Icons.settings, size: 40, color: Colors.white),

            Icon(Icons.supervised_user_circle_sharp,
                size: 40, color: Colors.orange),
            Icon(Icons.home_outlined, size: 60, color: Colors.white),
            Icon(Icons.notifications_active_outlined,
                size: 40, color: Colors.orange),
            Icon(Icons.chat, size: 40, color: Colors.orange),
          ],

          index: 2,

          onTap: (index) {
            //Handle button tap
            debugPrint("indix number is: $index");

            if (index == 0) {
              print("Clicked indix number is: $index");
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            } else if (index == 1) {
              print("Clicked indix number is: $index");
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ManagePFP()));
            } else if (index == 2) {
              print("Clicked indix number is: $index");
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
            } else if (index == 3) {
              print("Clicked indix number is: $index");
            }
          },

          animationDuration: (Duration(milliseconds: 250)),
          animationCurve: Curves.easeInCubic,
          // height: 50,
        ),
      ),
      // body: Container(color: Colors.blueAccent

      // bottomNavigationBar: MyBNB(),
    );
  }
}

// int _index = 0;
// @override
// Widget build(BuildContext context) {
//   Widget child;
//   switch (_index) {
//     case 0:
//       child = FlutterLogo();
//       break;
//     case 1:
//       child = FlutterLogo(textColor: Colors.orange);
//       break;
//     case 2:
//       child = FlutterLogo(textColor: Colors.red);
//       break;
//   }

//   return Scaffold(
//     body: SizedBox.expand(child: child),
//     bottomNavigationBar: BottomNavigationBar(
//       onTap: (newIndex) => setState(() => _index = newIndex),
//       currentIndex: _index,
//       items: [
//         BottomNavigationBarItem(
//             icon: Icon(Icons.looks_one), title: Text("Blue")),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.looks_two), title: Text("Orange")),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.looks_3), title: Text("Red")),
//       ],
//     ),
//   );
// }
// }
