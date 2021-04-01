import 'package:Quicksale/views/onboarding_views_screen/onboarding.second.view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class OnboardingFirst extends StatelessWidget {
  static const String id = 'OnboardingFirst';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GestureDetector(
          onHorizontalDragEnd: (DragEndDetails details) {
            Navigator.pushNamed(context, OnboardingSecond.id);
          },
          child: Stack(
            children: [
              Container(
                constraints: BoxConstraints(maxHeight: 600),
                height: 600,
                child: Image.asset("assets/images/Onboarding1.png",
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
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              'Buy or Exchange Products',
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
                                  constraints: BoxConstraints(maxWidth: 320),
                                  child: Text(
                                    'Browse any second-hand items that fits your need. Find your favorite product and buy/exchange it. ',
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
                                      Image.asset("assets/images/dots1.png"))),
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
