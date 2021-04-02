import 'package:Quicksale/views/shop_views_screen/discover.views.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  static const String id = 'Login';
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
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.only(top: 250),
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
              Expanded(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                      padding: EdgeInsets.only(top: 230),
                      child: SizedBox(
                        width: 320,
                        child: LoginForm(),
                      )),
                ]),
              ),
            ],
          ),
        )
      ],
    ));
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
            child: TextFormField(
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
              child: TextFormField(
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
                      onPressed: () {
                        Navigator.pushNamed(context, Discover.id);
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
