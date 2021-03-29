import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/drawer.png'),
                    fit: BoxFit.cover)),
            accountName: Text("Elena Josh"),
            accountEmail: Text("e.josh@gmail.com"),
            // currentAccountPicture: CircleAvatar(
            //   radius: 5.0,
            //   backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
            //       ? Colors.blue
            //       : Colors.white,
            //   child: Text(
            //     "A",
            //     style: TextStyle(fontSize: 40.0),
            //   ),
            // ),
          ),
          ListTile(
            title: Text("Settings",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'MartelSans')),
            leading: Container(
              width: 50,
              child: FlatButton(
                child:
                    Icon(Icons.settings_outlined, size: 20, color: Colors.grey),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                ),
                color: Colors.grey[100],
                onPressed: () {},
              ),
            ),
            trailing: Icon(Icons.navigate_next, color: Colors.grey),
          ),

          ListTile(
            title: Text("Help & Feedback",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'MartelSans')),
            leading: Container(
              width: 50,
              child: FlatButton(
                child:
                    Icon(Icons.build_outlined, size: 20, color: Colors.grey),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                ),
                color: Colors.grey[100],
                onPressed: () {},
              ),
            ),
            trailing: Icon(Icons.navigate_next, color: Colors.grey),
          ),

          ListTile(
            title: Text("Alerts & Notifications",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'MartelSans')),
            leading: Container(
              width: 50,
              child: FlatButton(
                child:
                    Icon(Icons.notifications_outlined, size: 20, color: Colors.grey),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                ),
                color: Colors.grey[100],
                onPressed: () {},
              ),
            ),
            trailing: Icon(Icons.navigate_next, color: Colors.grey),
          ),

          ListTile(
            title: Text("Logout",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'MartelSans')),
            leading: Container(
              width: 50,
              child: FlatButton(
                child:
                    Icon(Icons.logout, size: 20, color: Colors.grey),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                ),
                color: Colors.grey[100],
                onPressed: () {},
              ),
            ),
            trailing: Icon(Icons.navigate_next, color: Colors.grey),
          ),
          
        ],
      ),
    );
  }
}
