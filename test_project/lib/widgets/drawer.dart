import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://media-exp2.licdn.com/dms/image/D5603AQFd3YTKPUj4YQ/profile-displayphoto-shrink_200_200/0/1644571959211?e=1660176000&v=beta&t=2kscIvAspx9czw4MZ8rehOLCWofWnHg-6jW1kyJBYaI";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children:[
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Sameer Kumar"), 
                accountEmail: Text("sameer.k.saha@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl)
                ),
                )
              ),

            ListTile(
              leading: Icon(
                CupertinoIcons.home, color: Colors.white
              ),
              title: Text("Home", style: TextStyle(color: Colors.white), textScaleFactor: 1.3,),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled, color: Colors.white
              ),
              title: Text("Profile", style: TextStyle(color: Colors.white), textScaleFactor: 1.3,),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.mail, color: Colors.white
              ),
              title: Text("Contact Us", style: TextStyle(color: Colors.white), textScaleFactor: 1.3,),
            )

          ]
        ),
      ),
    );
    
  }
}