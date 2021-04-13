import 'package:Quicksale/views/shop_views_screen/discover.views.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Login extends StatelessWidget {
  static const String id = 'Login';
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints(maxHeight: 500),
            height: 500,
            child: Image.asset("assets/images/authrec.png", fit: BoxFit.cover),
          ),
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 150),
                          child: Text(
                            'Welcome Back',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'MartelSans'),
                          ),
                        )
                      ]),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            right: 20,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  height: 200,
                  // decoration: BoxDecoration(color: Colors.black),
                  child: SizedBox(
                    width: 320,
                    child: LoginForm(),
                  )),
            ]),
          ),
        ],
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: TextField(
              onChanged: (value) {
                email = value;
              },
              keyboardType: TextInputType.name,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'MartelSans'),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined, size: 22),
                  hintText: 'Email'),
            ),
          ),
          // The validator receives the text that the user has entered.

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 2),
              child: TextField(
                onChanged: (value) {
                  password = value;
                },
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
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
          ),

          Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: Text(
                  'Forgot your password?',
                  style: TextStyle(
                      color: Color(0xFF9BA9FF),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'MartelSans'),
                ),
              )
            ]),
          ),

          Expanded(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 320,
                    child: ElevatedButton(
                      child: Text("Log in"),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF9BA9FF)),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.symmetric(horizontal: 12, vertical: 12)),
                      ),
                      onPressed: () async {
                        try {
                          SpinKitDoubleBounce(
                            duration: Duration(minutes: 1),
                            size: 100,
                            color: Colors.white,
                          );
                          final existingUser =
                              await _auth.signInWithEmailAndPassword(
                                  password: password, email: email);
                          if (existingUser != null) {
                            Navigator.pushNamed(context, Discover.id);
                          }
                        } catch (e) {
                          print("hi");
                        }
                      },
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
