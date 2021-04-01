import 'package:Quicksale/views/onboarding_views_screen/onboarding.fourth.view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class OnboardingThird extends StatelessWidget {
  static const String id = 'OnboardingThird';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GestureDetector(
          onHorizontalDragEnd: (DragEndDetails details) {
            Navigator.pushNamed(context, OnboardingFourth.id);
          },
          child: Stack(
            children: [
              Container(
                constraints: BoxConstraints(maxHeight: 600),
                height: 600,
                child: Image.asset("assets/images/Onboarding3.png",
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
                              'Communicate with Other Vendors',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
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
                              padding: EdgeInsets.only(top: 430, bottom: 20),
                              child: Container(
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(maxWidth: 330),
                                  child: Text(
                                    'Want to bargain, complain, or have some deal with the vendor of a specific item that caught your eyes, contact him/she directly via private messaging.',
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
                                      Image.asset("assets/images/dots3.png"))),
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
