import 'package:flutter/material.dart';

class History extends StatelessWidget {
  static const String id = 'History';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.grey),
          elevation: 1,
          centerTitle: true,
          title: Text('Order History',
              style: TextStyle(color: Colors.grey, fontFamily: 'MartelSans')),
        ),
        body: Container(
            margin: EdgeInsets.only(top: 20, right: 20, left: 20),
            child: ListView(
              children: [
                ListTile(
                  title: Text("Order ID: #856931",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'MartelSans')),
                  subtitle: Text('Total: \$6.25',
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'MartelSans')),
                  leading: Container(
                    width: 50,
                    child: FlatButton(
                      child: Icon(Icons.shopping_cart_outlined,
                          size: 20, color: Colors.grey),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                      color: Colors.grey[100],
                      onPressed: () {},
                    ),
                  ),
                  trailing: Icon(Icons.navigate_next, color: Colors.grey),
                ),
                Divider(),
                ListTile(
                  title: Text("Order ID: #856931",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'MartelSans')),
                  subtitle: Text('Total: \$6.25',
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'MartelSans')),
                  leading: Container(
                    width: 50,
                    child: FlatButton(
                      child: Icon(Icons.shopping_cart_outlined,
                          size: 20, color: Colors.grey),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                      color: Colors.grey[100],
                      onPressed: () {},
                    ),
                  ),
                  trailing: Icon(Icons.navigate_next, color: Colors.grey),
                ),
                Divider(),
                ListTile(
                  title: Text("Order ID: #856931",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'MartelSans')),
                  subtitle: Text('Total: \$6.25',
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'MartelSans')),
                  leading: Container(
                    width: 50,
                    child: FlatButton(
                      child: Icon(Icons.shopping_cart_outlined,
                          size: 20, color: Colors.grey),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                      color: Colors.grey[100],
                      onPressed: () {},
                    ),
                  ),
                  trailing: Icon(Icons.navigate_next, color: Colors.grey),
                ),
                Divider(),
              ],
            )),
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
            ]));
  }
}
