import 'package:flutter/material.dart';
import 'package:hello_world/main_screen.dart';
import 'package:hello_world/manage_pfp.dart';
import 'package:hello_world/messages.dart';
import 'package:hello_world/notifications.dart';
import 'package:hello_world/settings.dart';



class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
                   image: DecorationImage(
                     image: AssetImage("assets/bg4.jpg"),
                     fit: BoxFit.cover
                     ),
                  ),
        child: ListView(
          padding: EdgeInsets.all(0),
          
          children: <Widget>[

            UserAccountsDrawerHeader(
            

              decoration: BoxDecoration(
                     image: DecorationImage(
                       image: AssetImage("assets/bg4.jpg"),
                       fit: BoxFit.cover
                       ),
                    ),

              // decoration: BoxDecoration(
              //   color: Colors.cyan,
              //           border: Border.all(
              //             color: Colors.cyan,
              //             width: 0,
              //           ),
              //           borderRadius: BorderRadius.circular(10),
              //           ),
                        
              accountName: Text('Adam Smith'),
              accountEmail: Text('Software Developer'),
              currentAccountPicture: Image.asset("assets/avatar.png"),
            ),

            ListTile(
              tileColor: Colors.white70,
              leading: Icon(Icons.settings),
              title: Text('Main Menu'),
              // trailing: Icon(Icons.edit),
              onTap: () => Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) =>
                Main_Screen())) ,
            ),

            SizedBox(
              height: 10,
            ),
            
            ListTile(
              tileColor: Colors.white60,
              leading: Icon(Icons.settings),
              title: Text('Manage Profile'),
              // trailing: Icon(Icons.edit),
              onTap: () => Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) =>
                ManagePFP())) ,
            ),

            SizedBox(
              height: 10,
            ),


            ListTile(
              tileColor: Colors.white54,
              leading: Icon(Icons.history),
              title: Text('History'),
              // trailing: Icon(Icons.edit),
              onTap: () => Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) =>
                Messages())) ,
            ),

             SizedBox(
              height: 10,
            ),


            ListTile(
              tileColor: Colors.white38,
              leading: Icon(Icons.notification_important),
              title: Text('Notifications'),
              onTap: () => Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) =>
                  Notifications())) ,
              ),

              SizedBox(
              height: 10,
            ),

               ListTile(
              tileColor: Colors.white30,
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              // trailing: Icon(Icons.edit),
              onTap: () => Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) =>
                Settings())) ,
            ),

            

               SizedBox(
              height: 10,
            ),


             ListTile(
              tileColor: Colors.white24,
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              // trailing: Icon(Icons.edit),
            //   onTap: () => Navigator.push(
            //     context, 
            //     MaterialPageRoute(builder: (context) =>
            //     History())) ,
            ),

             SizedBox(
              height: 10,
            ),

          ],
        ),
      ),
    );
  }
}
