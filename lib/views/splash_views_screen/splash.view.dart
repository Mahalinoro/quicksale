import 'package:flutter/material.dart';

class Home extends StatelessWidget {

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
                        child: Image.asset("assets/images/Logo.png", width: 400, height: 100, fit: BoxFit.cover)
                        )
                      )
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
                  child: Text("v.1.0", 
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'MartelSans'),
                  )
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}