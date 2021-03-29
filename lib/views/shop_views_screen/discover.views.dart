import 'package:flutter/material.dart';
import 'package:Quicksale/views/profile_views_sceen/drawer.views.dart';

class Discover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF9BA9FF),
          actions: [
            IconButton(
                icon: Icon(Icons.shopping_cart_outlined), onPressed: () {}),
          ],
        ),
        drawer: CustomDrawer(),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 211.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/discover.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: SizedBox(
                          width: 250,
                          // height: 100
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'MartelSans'),
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search, size: 25),
                              hintText: 'Search',
                              filled: true,
                              fillColor: Colors.grey[100],
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey[300], width: 0.5),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey[300], width: 0.5),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: ElevatedButton(
                          child: Icon(Icons.tune),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFF9BA9FF)),
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 12)),
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, right: 30, left: 40),
                  child: Text('Categories',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'MartelSans')),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                            padding: EdgeInsets.only(right: 2),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 50,
                                  height: 50,
                                  // height: 100
                                  child: FlatButton(
                                    child: Icon(Icons.checkroom_outlined,
                                        size: 25, color: Color(0xFF9BA9FF)),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(25.0),
                                    ),
                                    color: Colors.grey[100],
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                  width: 50,
                                  child: Text('Clothing & Shoes',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFF9BA9FF),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'MartelSans')),
                                ),
                              ],
                            )),
                      ),
                      Expanded(
                        child: Padding(
                            padding: EdgeInsets.only(right: 2),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 50,
                                  height: 50,
                                  // height: 100
                                  child: FlatButton(
                                    child: Icon(Icons.spa_outlined,
                                        size: 25, color: Color(0xFF9BA9FF)),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(25.0),
                                    ),
                                    color: Colors.grey[100],
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                  width: 50,
                                  child: Text('Health & Beauty',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFF9BA9FF),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'MartelSans')),
                                ),
                              ],
                            )),
                      ),
                      Expanded(
                        child: Padding(
                            padding: EdgeInsets.only(right: 2),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 50,
                                  height: 50,
                                  // height: 100
                                  child: FlatButton(
                                    child: Icon(Icons.phonelink,
                                        size: 25, color: Color(0xFF9BA9FF)),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(25.0),
                                    ),
                                    color: Colors.grey[100],
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                  width: 50,
                                  child: Text('Computer & Phone',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFF9BA9FF),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'MartelSans')),
                                ),
                              ],
                            )),
                      ),
                      Expanded(
                        child: Padding(
                            padding: EdgeInsets.only(right: 2),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 50,
                                  height: 50,
                                  // height: 100
                                  child: FlatButton(
                                    child: Icon(Icons.child_friendly,
                                        size: 25, color: Color(0xFF9BA9FF)),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(25.0),
                                    ),
                                    color: Colors.grey[100],
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                  width: 50,
                                  child: Text('Baby & Toddler',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFF9BA9FF),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'MartelSans')),
                                ),
                              ],
                            )),
                      ),
                      Expanded(
                        child: Padding(
                            padding: EdgeInsets.only(right: 2),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 50,
                                  height: 50,
                                  // height: 100
                                  child: FlatButton(
                                    child: Icon(Icons.house,
                                        size: 25, color: Color(0xFF9BA9FF)),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(35.0),
                                    ),
                                    color: Colors.grey[100],
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                  width: 50,
                                  child: Text('Home & Garden',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFF9BA9FF),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'MartelSans')),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, right: 30, left: 40),
                  child: Text('Discover',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'MartelSans')),
                ),
                Container(
                  width: 500,
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
                  child: Column(children: [
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.center,
                      runSpacing: 5.0,
                      spacing: 5.0,
                      children: [
                        Container(
                            width: 170,
                            // margin: const EdgeInsets.all(15.0),
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[200]),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    SizedBox(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/article1.png'),
                                      ),
                                    ),
                                    Positioned(
                                      child: SizedBox(
                                        width: 35,
                                        height: 35,
                                        child: FlatButton(
                                          child: Icon(Icons.add,
                                              size: 20,
                                              color: Color(0xFF9BA9FF)),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 7),
                                          shape: new RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(15),
                                          ),
                                          color: Colors.white,
                                          onPressed: () {},
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      child: SizedBox(
                                        width: 35,
                                        height: 35,
                                        child: FlatButton(
                                          child: Icon(
                                            Icons.favorite_outline,
                                            size: 20,
                                            color: Colors.grey[300],
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 7),
                                          shape: new RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(15.0),
                                          ),
                                          color: Colors.white,
                                          onPressed: () {},
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                  child: Text('Veldskoen Boot Grey (Farmer)',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'MartelSans')),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Text("\$150",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'MartelSans'))),
                                    Expanded(
                                        child: Text('Jennifer Alan',
                                            textAlign: TextAlign.end,
                                            style: TextStyle(
                                                color: Color(0xFF9BA9FF),
                                                fontSize: 10,
                                                fontWeight: FontWeight.w300,
                                                fontFamily: 'MartelSans')))
                                  ],
                                )
                              ],
                            )),
                        Container(
                            width: 170,
                            // margin: const EdgeInsets.all(15.0),
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[200]),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    SizedBox(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/article2.png'),
                                      ),
                                    ),
                                    Positioned(
                                      child: SizedBox(
                                        width: 35,
                                        height: 35,
                                        child: FlatButton(
                                          child: Icon(Icons.add,
                                              size: 20,
                                              color: Color(0xFF9BA9FF)),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 7),
                                          shape: new RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(15),
                                          ),
                                          color: Colors.white,
                                          onPressed: () {},
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      child: SizedBox(
                                        width: 35,
                                        height: 35,
                                        child: FlatButton(
                                          child: Icon(
                                            Icons.favorite_outline,
                                            size: 20,
                                            color: Colors.grey[300],
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 7),
                                          shape: new RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(15.0),
                                          ),
                                          color: Colors.white,
                                          onPressed: () {},
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                  child: Text('Asus Ultralight Athena 14-Inch',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'MartelSans')),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Text("\$1250",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'MartelSans'))),
                                    Expanded(
                                        child: Text('Peter Man',
                                            textAlign: TextAlign.end,
                                            style: TextStyle(
                                                color: Color(0xFF9BA9FF),
                                                fontSize: 10,
                                                fontWeight: FontWeight.w300,
                                                fontFamily: 'MartelSans')))
                                  ],
                                )
                              ],
                            )),
                      ],
                    )
                  ]),
                )
              ],
            ),

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
        )
      ),
    );
  }
}
