import 'package:flutter/material.dart';
import 'discover.views.dart';

class PaymentSuccess extends StatelessWidget {
  static const String id = 'PaymentSuccess';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 100),
              Container(
                height: 400.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/success.png'),
                      fit: BoxFit.contain),
                ),
              ),
              SizedBox(
                child: Text(
                  'Successful Order',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'MartelSans',
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: 250,
                  child: Text(
                    'Your order has been received successfully. It will be delivered shortly in your address. Thank you for your order!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'MartelSans',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                child: ElevatedButton(
                  child: Text("Back to Home"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(128, 237, 153, 1.0)),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.symmetric(horizontal: 12, vertical: 12)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, Discover.id);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
