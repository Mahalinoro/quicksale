import 'dart:io';
import 'package:Quicksale/views/onboarding_views_screen/onboarding.fourth.view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CustomDrawer extends StatefulWidget {
  static const String id = 'CustomDrawer';
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

PickedFile _imageFile;
final ImagePicker _picker = ImagePicker();

class _CustomDrawerState extends State<CustomDrawer> {
  final _auth = FirebaseAuth.instance;
  bool savedProfile = false;
  String profilePicAddress;
  String currentUser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getcurrentUser();
  }

  void sayCheese(ImageSource source) async {
    final pickedFile = await _picker.getImage(source: source);
    setState(() {
      _imageFile = pickedFile;
    });
  }

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: 100,
      margin: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20.0,
      ),
      child: Column(children: <Widget>[
        Text(
          "Change Profile Picture",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.camera_alt),
              onPressed: () {
                sayCheese(ImageSource.camera);
              },
              label: Text("Camera"),
            ),
            FlatButton.icon(
              icon: Icon(Icons.image),
              onPressed: () {
                sayCheese(ImageSource.gallery);
              },
              label: Text("Gallery"),
            ),
          ],
        )
      ]),
    );
  }

  void getcurrentUser() {
    try {
      _auth.authStateChanges().listen((User user) {
        if (user == null) {
          //print(user);
        } else {
          print(user);
          print(user.email);
          setState(() {
            currentUser = user.email;
          });
        }
      });
    } catch (e) {
      print(e);
    }
  }

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
            accountName: Text("username"),
            accountEmail: Text("$currentUser"),
            currentAccountPicture: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: ((builder) => bottomSheet()),
                );
              },
              child: ClipOval(
                child: Image(
                  image: savedProfile
                      ? FileImage(File(profilePicAddress))
                      : _imageFile == null
                          ? AssetImage('assets/images/Profile.jpg')
                          : FileImage(File(_imageFile.path)),
                  fit: BoxFit.cover,
                ),
              ),
            ),
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
                child: Icon(Icons.build_outlined, size: 20, color: Colors.grey),
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
                child: Icon(Icons.notifications_outlined,
                    size: 20, color: Colors.grey),
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
                child: Icon(Icons.logout, size: 20, color: Colors.grey),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                ),
                color: Colors.grey[100],
                onPressed: () async {
                  await _auth.signOut();
                  Navigator.pushNamed(context, OnboardingFourth.id);
                },
              ),
            ),
            trailing: Icon(Icons.navigate_next, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
