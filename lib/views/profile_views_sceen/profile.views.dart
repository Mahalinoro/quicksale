import 'package:flutter/material.dart';
import 'package:Quicksale/views/profile_views_sceen/drawer.views.dart';

class Profile extends StatelessWidget {
  static const String id = 'Profile';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        elevation: 1,
        actions: [
          IconButton(
              icon: Icon(Icons.shopping_cart_outlined), onPressed: () {}),
        ],
      ),
      drawer: CustomDrawer(),
      body: Container(
        margin: EdgeInsets.only(top: 20, right: 40, left: 40),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 70,
                  child: Image(
                    image: AssetImage('assets/images/profile-mini.png'),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Text('Elena Josh',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'MartelSans')),
                      ),
                      SizedBox(
                        child: Text('e.josh@gmail.com',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'MartelSans')),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Divider(),
            SizedBox(height: 10),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Container(
                        child: FlatButton(
                          child: Icon(Icons.person_outlined,
                              size: 25, color: Colors.grey),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0),
                          ),
                          color: Colors.grey[100],
                          onPressed: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      flex: 4,
                      child: Text('Personal Information'),
                    ),
                    const Icon(Icons.navigate_next,
                        size: 25.0, color: Colors.grey),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Container(
                        child: FlatButton(
                          child: Icon(Icons.bookmark_outline,
                              size: 25, color: Colors.grey),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0),
                          ),
                          color: Colors.grey[100],
                          onPressed: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      flex: 4,
                      child: Text('Order History'),
                    ),
                    const Icon(Icons.navigate_next,
                        size: 25.0, color: Colors.grey),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Container(
                        child: FlatButton(
                          child: Icon(Icons.shopping_cart_outlined,
                              size: 25, color: Colors.grey),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0),
                          ),
                          color: Colors.grey[100],
                          onPressed: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      flex: 4,
                      child: Text('Manage Sale'),
                    ),
                    const Icon(Icons.navigate_next,
                        size: 25.0, color: Colors.grey),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Container(
                        child: FlatButton(
                          child: Icon(Icons.favorite_border_outlined,
                              size: 25, color: Colors.grey),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0),
                          ),
                          color: Colors.grey[100],
                          onPressed: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      flex: 4,
                      child: Text('Favorites'),
                    ),
                    Icon(Icons.navigate_next, size: 25.0, color: Colors.grey),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Container(
                        child: FlatButton(
                          child: Icon(Icons.settings_outlined,
                              size: 25, color: Colors.grey),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0),
                          ),
                          color: Colors.grey[100],
                          onPressed: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      flex: 4,
                      child: Text('Settings'),
                    ),
                    Icon(Icons.navigate_next, size: 25.0, color: Colors.grey),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Container(
                        child: FlatButton(
                          child: Icon(Icons.build_outlined,
                              size: 25, color: Colors.grey),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0),
                          ),
                          color: Colors.grey[100],
                          onPressed: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      flex: 4,
                      child: Text('Help & Feedback'),
                    ),
                    Icon(Icons.navigate_next, size: 25.0, color: Colors.grey),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Container(
                        child: FlatButton(
                          child: Icon(Icons.notifications_outlined,
                              size: 25, color: Colors.grey),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0),
                          ),
                          color: Colors.grey[100],
                          onPressed: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      flex: 4,
                      child: Text('Alerts & Notifications'),
                    ),
                    Icon(Icons.navigate_next, size: 25.0, color: Colors.grey),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xFF9BA9FF),
          unselectedItemColor: Colors.black26,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.favorite_border_outlined),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.shopping_cart_outlined),
              label: 'My Cart',
            ),
            //  BottomNavigationBarItem(
            //    icon: new Icon(Icons.message_outlined),
            //    label: 'Message',
            //  ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            )
          ]),
    ));
  }
}
