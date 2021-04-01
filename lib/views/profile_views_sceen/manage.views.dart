import 'package:flutter/material.dart';

class ManageSale extends StatelessWidget {
  static const String id = 'ManageSale';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.grey),
          elevation: 1,
          centerTitle: true,
          title: Text('Manage Sales',
              style: TextStyle(color: Colors.grey, fontFamily: 'MartelSans')),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xFF9BA9FF),
            onPressed: () {},
            child: Icon(Icons.add)),
        body: Container(
          margin: EdgeInsets.only(top: 20, right: 20, left: 20),
          child: Column(
            children: [
              Container(
                width: 400,
                height: 150,
                // margin: EdgeInsets.only(
                //     left: 20, right: 20, top: 100, bottom: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[200]),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Image(
                        image: AssetImage('assets/images/mycart1.png'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 2,
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
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'MartelSans')),
                            ],
                          ),
                          Row(children: [
                            SizedBox(
                              width: 60,
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
                                          color: Colors.white, fontSize: 10))),
                            ),
                            SizedBox(width: 10),
                            SizedBox(
                              width: 60,
                              height: 30,
                              child: FlatButton(
                                  padding: EdgeInsets.all(5),
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(5.0),
                                  ),
                                  color: Colors.green[300],
                                  onPressed: () {},
                                  child: Text('Update',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10))),
                            ),
                          ])
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 400,
                height: 150,
                // margin: EdgeInsets.only(
                //     left: 20, right: 20, top: 100, bottom: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[200]),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Image(
                        image: AssetImage('assets/images/mycart1.png'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 2,
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
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'MartelSans')),
                            ],
                          ),
                          Row(children: [
                            SizedBox(
                              width: 60,
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
                                          color: Colors.white, fontSize: 10))),
                            ),
                            SizedBox(width: 10),
                            SizedBox(
                              width: 60,
                              height: 30,
                              child: FlatButton(
                                  padding: EdgeInsets.all(5),
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(5.0),
                                  ),
                                  color: Colors.green[300],
                                  onPressed: () {},
                                  child: Text('Update',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10))),
                            ),
                          ])
                        ],
                      ),
                    )
                  ],
                ),
              ),
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
            ]));
  }
}
