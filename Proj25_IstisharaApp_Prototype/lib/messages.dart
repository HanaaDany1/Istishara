import 'package:flutter/material.dart';
import 'package:hello_world/drawer.dart';
import 'package:hello_world/home_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:hello_world/notifications.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: Scaffold(
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.orange[200],
            color: Colors.lightGreen,
            items: <Widget>[
              // IconButton(
              //     icon:
              // Icon(Icons.settings, size: 40, color: Colors.white),
              // Icon(Icons.supervised_user_circle_sharp,
              //     size: 40, color: Colors.white),
              Icon(Icons.notifications_active_outlined,
                  size: 40, color: Colors.white),
              Icon(Icons.home_outlined, size: 60, color: Colors.white),
              Icon(Icons.message_sharp, size: 40, color: Colors.white),
            ],
            index: 2,
            onTap: (index) {
              //Handle button tap
              debugPrint("indix number is: $index");

              if (index == 0) {
                print("Clicked indix number is: $index");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Notifications()));
              } else if (index == 1) {
                print("Clicked indix number is: $index");
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              } else if (index == 2) {
                print("Clicked indix number is: $index");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Messages()));
              }

              //   if (index == 0) {
              //     print("Clicked indix number is: $index");
              //     Navigator.push(context,
              //         MaterialPageRoute(builder: (context) => Settings()));
              //   } else if (index == 1) {
              //     print("Clicked indix number is: $index");
              //     Navigator.push(context,
              //         MaterialPageRoute(builder: (context) => ManagePFP()));
              //   } else if (index == 2) {
              //     print("Clicked indix number is: $index");
              //     Navigator.push(
              //         context, MaterialPageRoute(builder: (context) => MyApp()));
              //   } else if (index == 3) {
              //     print("Clicked indix number is: $index");
              //     Navigator.push(context,
              //         MaterialPageRoute(builder: (context) => Notifications()));
              //   } else if (index == 4) {
              //   print("Clicked indix number is: $index");
              //   Navigator.push(context,
              //         MaterialPageRoute(builder: (context) => Messages()));
              // }
            },
            animationDuration: (Duration(milliseconds: 250)),
            animationCurve: Curves.easeInCubic,
            height: 55,
          ),
          backgroundColor: Colors.orange[200],
          appBar: AppBar(
            automaticallyImplyLeading: true,
            // title: Text('Istishara'),
            title: Image.asset("assets/logo.png"),
            backgroundColor: Colors.lightGreen,
            toolbarHeight: 70,

            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.black,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    new MaterialPageRoute(builder: (context) => MyApp()),
                  );
                }),
          ),
          body: Container(
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //       image: AssetImage("assets/mo.jpg"), fit: BoxFit.cover),
            // ),
            child: Center(
              child: Text(
                'Messages',
                style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          drawer: MyDrawer(),
        ),
      ),
    );
  }
}
