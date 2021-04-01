import 'package:Quicksale/views/shop_views_screen/payment.views.dart';
import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  static const String id = 'MyCart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                height: 150.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/itemBack.png'),
                      fit: BoxFit.cover),
                ),
              ),
              Center(
                child: ListView(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 350,
                      height: 150,
                      margin: EdgeInsets.only(
                          left: 20, right: 20, top: 100, bottom: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white54),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white54),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Image(
                              image: AssetImage('assets/images/mycart1.png'),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    child: Text(
                                  'Barely There Strappy Heels',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'MartelSans'),
                                )),
                                Row(
                                  children: [
                                    Text('\$6.25',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700)),
                                  ],
                                ),
                                Row(children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    width: 70,
                                    height: 30,
                                    child: FlatButton(
                                        padding: EdgeInsets.all(5),
                                        shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(5.0),
                                        ),
                                        color: Colors.red[400],
                                        onPressed: () {},
                                        child: Text('Remove',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13))),
                                  )
                                ])
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 350,
                      height: 150,
                      margin: EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white54),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white54),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Image(
                              image: AssetImage('assets/images/mycart1.png'),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    child: Text(
                                  'Barely There Strappy Heels',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'MartelSans'),
                                )),
                                Row(
                                  children: [
                                    Text('\$6.25 |',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700)),
                                  ],
                                ),
                                Row(children: [
                                  Container(
                                    width: 70,
                                    height: 30,
                                    margin: EdgeInsets.only(top: 10),
                                    child: FlatButton(
                                        padding: EdgeInsets.all(5),
                                        shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(5.0),
                                        ),
                                        color: Colors.red[400],
                                        onPressed: () {},
                                        child: Text('Remove',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13))),
                                  )
                                ])
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 350,
                      height: 150,
                      margin: EdgeInsets.only(
                          left: 20, right: 20, top: 5, bottom: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white54),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white54),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Image(
                              image: AssetImage('assets/images/mycart1.png'),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    child: Text(
                                  'Barely There Strappy Heels',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'MartelSans'),
                                )),
                                Row(
                                  children: [
                                    Text('\$6.25',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700)),
                                  ],
                                ),
                                Row(children: [
                                  Container(
                                    width: 70,
                                    height: 30,
                                    margin: EdgeInsets.only(top: 10),
                                    child: FlatButton(
                                        padding: EdgeInsets.all(5),
                                        shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(5.0),
                                        ),
                                        color: Colors.red[400],
                                        onPressed: () {},
                                        child: Text('Remove',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13))),
                                  )
                                ])
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 300,
                      child: ElevatedButton(
                        child: Text("Proceed to Checkout"),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF9BA9FF)),
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 12)),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, Payment.id);
                        },
                      ),
                    )
                  ],
                ),
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
          ],
        ));
  }
}
