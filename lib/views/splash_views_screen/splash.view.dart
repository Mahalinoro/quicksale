import 'package:Quicksale/views/authentication_views_screen/index.views.dart';
import 'package:Quicksale/views/onboarding_views_screen/onboarding.first.view.dart';
import 'package:Quicksale/views/shop_views_screen/discover.views.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const String id = 'Home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();

    checkStatus().then((status) {
      if (status) {
        navigateHome();
      } else {
        navigateDiscover();
      }
    });
  }

  Future<bool> checkStatus() async {
    await Future.delayed(Duration(milliseconds: 6000), () {});

    return true;
  }

  void navigateHome() {
    Navigator.pushNamed(context, OnboardingFirst.id);
  }

  void navigateDiscover() {
    Navigator.pushNamed(context, Discover.id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Background.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                            child: Image.asset("assets/images/Logo.png",
                                width: 400, height: 100, fit: BoxFit.cover)))
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "v.1.0",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'MartelSans'),
                    )),
              )
            ],
          )
        ]),
      ),
    );
  }
}
