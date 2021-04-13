import 'package:Quicksale/views/shop_views_screen/discover.views.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatelessWidget {
  static const String id = 'SignUp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          constraints: BoxConstraints(maxHeight: 500),
          height: 490,
          child: Image.asset("assets/images/authrec.png", fit: BoxFit.cover),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  padding: EdgeInsets.only(top: 230),
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'MartelSans'),
                  ),
                )
              ]),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          right: 14,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.only(top: 160),
                    // decoration: BoxDecoration(color: Colors.black),
                    child: SizedBox(
                      width: 320,
                      child: SignUpForm(),
                    )),
              ]),
        ),
      ],
    ));
  }
}

class SignUpForm extends StatefulWidget {
  @override
  SignUpFormState createState() {
    return SignUpFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String name;
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextField(
            keyboardType: TextInputType.name,
            onChanged: (value) {
              name = value;
            },
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                fontFamily: 'MartelSans'),
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_outlined, size: 22),
                hintText: 'Name'),
          ),

          // The validator receives the text that the user has entered.
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                email = value;
              },
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'MartelSans'),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined, size: 22),
                  hintText: 'Email'),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 10),
            child: TextField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              onChanged: (value) {
                password = value;
              },
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'MartelSans'),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outlined, size: 22),
                  suffixIcon: Icon(Icons.remove_red_eye_sharp, size: 22),
                  hintText: 'Password'),
            ),
          ),

          Row(children: [
            Container(
              width: 320,
              child: ElevatedButton(
                child: Text("Sign Up"),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF9BA9FF)),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 12, vertical: 12)),
                ),
                onPressed: () async {
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    if (newUser != null) {
                      Navigator.pushNamed(context, Discover.id);
                    }
                  } catch (e) {
                    print(e);
                  }
                },
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
