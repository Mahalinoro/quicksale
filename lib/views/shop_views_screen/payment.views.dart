import 'package:Quicksale/views/shop_views_screen/success.views.dart';
import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  static const String id = 'Payment';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF9BA9FF),
        title: Text('Payment Details'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 100.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/itemBack.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Center(
                child: Container(
                    width: 350,
                    margin: EdgeInsets.only(
                        left: 20, right: 20, top: 50, bottom: 20),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white54),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white54),
                    child: Wrap(spacing: 8.0, children: [
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        child: Text('Confirm Order and Pay',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'MartelSans',
                            )),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Text('Payment Details',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'MartelSans',
                                  )))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: PaymentForm(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white54),
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFF9BA9FF),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  child: Text('Total Amount',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'MartelSans')),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  child: Text('\$6.25',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'MartelSans')),
                                )
                              ],
                            ),
                            Divider(
                              thickness: 2.0,
                              color: Colors.white,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  child: Text('Vendor Name',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'MartelSans')),
                                ),
                                Expanded(
                                  child: Text('Order ID',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'MartelSans')),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  child: Text('Jenifer Alan',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'MartelSans')),
                                ),
                                Expanded(
                                  child: Text('#152692',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'MartelSans')),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 320,
                        child: ElevatedButton(
                          child: Text("Pay \$6.25"),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFF9BA9FF)),
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 12)),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, PaymentSuccess.id);
                          },
                        ),
                      )
                    ])))
          ],
        ),
      ),
    );
  }
}

class PaymentForm extends StatefulWidget {
  @override
  PaymentFormState createState() {
    return PaymentFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class PaymentFormState extends State<PaymentForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                fontFamily: 'MartelSans'),
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_outlined, size: 20),
                hintText: 'Cardholder Name'),
          ),

          // The validator receives the text that the user has entered.
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: TextFormField(
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'MartelSans'),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.credit_card_outlined, size: 20),
                  hintText: 'Card Number'),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  child: TextFormField(
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'MartelSans'),
                    decoration: InputDecoration(
                        prefixIcon:
                            Icon(Icons.calendar_today_outlined, size: 22),
                        hintText: 'mm/yyyy'),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  child: TextFormField(
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'MartelSans'),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outlined, size: 22),
                        hintText: 'cvc'),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
