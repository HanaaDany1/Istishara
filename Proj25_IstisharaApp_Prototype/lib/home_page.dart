import 'package:flutter/material.dart';
import 'drawer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'manage_pfp.dart';
import 'messages.dart';
import 'notifications.dart';
import 'settings.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String valueChoose;
  List listItem = [
    "Categories",
    "Mechanic",
    "Architect",
    "S.W Developer",
    "plumber",
    "Lawyer",
    "Accountant",
    "Electrician"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.orange[200],
          color: Colors.lightGreen,
          items: <Widget>[
            // IconButton(
            //     icon:
            // Icon(Icons.settings, size: 40, color: Colors.white),

            // Icon(Icons.supervised_user_circle_sharp,
            // size: 40, color: Colors.white),
            Icon(Icons.notifications_active_outlined,
                size: 40, color: Colors.white),
            Icon(Icons.home_outlined, size: 60, color: Colors.white),
            Icon(Icons.chat, size: 40, color: Colors.white),
          ],
          index: 1,
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Messages()));
            }
            // else if (index == 3) {
            //   print("Clicked indix number is: $index");
            //   Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => Notifications()));
            // } else if (index == 4) {
            //   print("Clicked indix number is: $index");
            //   Navigator.push(
            //       context, MaterialPageRoute(builder: (context) => Messages()));
            // }
          },
          animationDuration: (Duration(milliseconds: 250)),
          animationCurve: Curves.easeInCubic,
          height: 55,
        ),

        appBar: AppBar(
          automaticallyImplyLeading: true,
          // title: Text('Istishara'),
          title: Image.asset("assets/logo.png"),
          backgroundColor: Colors.lightGreen,
          toolbarHeight: 70,

          //  leading: IconButton(
          //     icon: Icon(Icons.arrow_back_ios),
          //     color: Colors.black,
          //     onPressed: () {
          //       Navigator.push(
          //         context,
          //         new MaterialPageRoute(builder: (context) => MyApp()),
          //       );
          //     }),
        ),
        // ),

        // for the background
        backgroundColor: Colors.white,

        body: Container(
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //       image: AssetImage("assets/mo.jpg"), fit: BoxFit.cover),
          // ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 3, right: 3),
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.green,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    // for the filter by and the categories
                    child: Container(
                      child: Row(
                        children: [
                          Text(
                            ("      Filter by:   "),
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          DropdownButton(
                            hint: Text(
                              ("Categories"),
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),

                            dropdownColor: Colors.lightGreen,
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                            iconSize: 40,
                            // isExpanded: true,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            value: valueChoose,
                            onChanged: (newValue) {
                              setState(() {
                                valueChoose = newValue;
                              });
                            },
                            items: listItem.map((valueItem) {
                              return DropdownMenuItem(
                                value: valueItem,
                                child: Text(valueItem),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 0, right: 0),
                    height: 200,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.lightGreen,
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      ("Post 1"),
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 0, right: 0),
                    height: 300,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.lightGreen,
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      ("Post 2"),
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 0, right: 0),
                    height: 200,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.lightGreen,
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      ("Post 3"),
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 0, right: 0),
                    height: 200,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.lightGreen,
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      ("Post 4"),
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 0, right: 0),
                    height: 200,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.lightGreen,
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      ("Post 5"),
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        // ddlist: MyDropDownList(),
        drawer: MyDrawer(),
        // DropDownList: MyDropDownList(),

        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Text('New'),
          icon: Icon(Icons.add),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          backgroundColor: Colors.green,
          hoverColor: Colors.red,
        ),
      ),
    );
  }
}
