import 'package:Quicksale/views/authentication_views_screen/index.views.dart';
import 'package:Quicksale/views/shop_views_screen/discover.views.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class OnboardingFourth extends StatelessWidget {
  static const String id = 'OnboardingFourth';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GestureDetector(
          onHorizontalDragEnd: (DragEndDetails details) {
            Navigator.pushNamed(context, GetStarted.id);
          },
          child: Stack(
            children: [
              Container(
                constraints: BoxConstraints(maxHeight: 600),
                height: 600,
                child: Image.asset("assets/images/Onboarding4.png",
                    fit: BoxFit.cover),
              ),
              Container(
                  child: Column(
                children: [
                  Expanded(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 80, right: 30),
                            child: Text(
                              'SKIP',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'MartelSans'),
                            ),
                          )
                        ]),
                  ),
                  Expanded(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              'Pay with your Preferred Method',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'MartelSans'),
                            ),
                          )
                        ]),
                  ),
                  Expanded(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 430, bottom: 25),
                              child: Container(
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(maxWidth: 330),
                                  child: Text(
                                    'From cash on delivery to online payment, pay with the best method that is convenient for you.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w200,
                                        fontFamily: 'MartelSans'),
                                  ),
                                ),
                              ))
                        ]),
                  ),
                  Expanded(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 10),
                              width: 160,
                              height: 20,
                              child: Container(
                                  child:
                                      Image.asset("assets/images/dots4.png"))),
                        ]),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
