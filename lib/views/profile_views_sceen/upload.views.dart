import 'package:flutter/material.dart';

class UploadItem extends StatelessWidget {
  static const String id = 'UploadItem';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.grey),
          elevation: 1,
          centerTitle: true,
          title: Text('Upload Item',
              style: TextStyle(color: Colors.grey, fontFamily: 'MartelSans')),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 40, right: 20, left: 20),
          child: Column(
            children: [
              Container(
                width: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Image(
                        image: AssetImage('assets/images/mycart1.png'),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text('Upload Image',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF9BA9FF)))),
                  ],
                ),
              ),
              Container(
                width: 300,
                child: UploadItemForm(),
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
            ]));
  }
}

class UploadItemForm extends StatefulWidget {
  @override
  UploadItemFormState createState() {
    return UploadItemFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class UploadItemFormState extends State<UploadItemForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                fontFamily: 'MartelSans'),
            decoration: InputDecoration(
              labelText: 'Title',
              labelStyle: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'MartelSans'),
              filled: true,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              fillColor: Colors.grey[100],
              contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[300], width: 0.5),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[300], width: 0.5),
              ),
            ),
          ),
          // The validator receives the text that the user has entered.

          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: TextFormField(
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'MartelSans'),
              decoration: InputDecoration(
                labelText: 'Price',
                labelStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'MartelSans'),
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                fillColor: Colors.grey[100],
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[300], width: 0.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[300], width: 0.5),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: TextFormField(
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'MartelSans'),
              decoration: InputDecoration(
                labelText: 'Delivery Price',
                labelStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'MartelSans'),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                filled: true,
                fillColor: Colors.grey[100],
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[300], width: 0.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[300], width: 0.5),
                ),
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.only(top: 15, bottom: 20),
            child: TextFormField(
              keyboardType: TextInputType.multiline,
              maxLines: 3,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'MartelSans'),
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: 'Description',
                labelStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'MartelSans'),
                filled: true,
                fillColor: Colors.grey[100],
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[300], width: 0.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[300], width: 0.5),
                ),
              ),
            ),
          ),

          Row(children: [
            Container(
              width: 300,
              child: ElevatedButton(
                child: Text("Add Item"),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF9BA9FF)),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 12, vertical: 12)),
                ),
                onPressed: () {},
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
