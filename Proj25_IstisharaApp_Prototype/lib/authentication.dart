import 'package:flutter/material.dart';
import 'package:hello_world/drawer.dart';
import 'home_page.dart';

class Authentication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: Scaffold(
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
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => MyApp()),
                  );
                }),
          ),
          // ),

          // for the background
          backgroundColor: Colors.orange[200],

          body: Container(
            // child: Container(
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //         image: AssetImage("assets/mo.jpg"), fit: BoxFit.cover),
            //   ),
            child: Center(
              child: Builder(
                builder: (context) => RaisedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => MyApp()));
                  },
                  child: Text(
                      'Proceed to Home Screen >> this is to check that the page is working very well!'),
                  color: Colors.lightGreen,
                ),
              ),
            ),
            width: 200,
            height: 130,
            // ),
          ),
          drawer: MyDrawer(),
        ),
      ),
    );
  }
}
