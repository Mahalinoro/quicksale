import 'package:flutter/material.dart';

enum PaymentType { cash, card }

class Checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF9BA9FF),
        title: Text('Checkout'),
        centerTitle: true,
      ),
      body: Stack(
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
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white54),
                  child: Column(children: [
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Your Order',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'MartelSans'),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'View All',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: Color(0xFF9BA9FF),
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'MartelSans'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              child: Text(
                                '1x  Barely There Strappy Heels',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'MartelSans'),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '\$6.25',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'MartelSans'),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              child: Text(
                                '1x  Barely There Strappy Heels',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'MartelSans'),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '\$6.25',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'MartelSans'),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              child: Text(
                                '1x  Barely There Strappy Heels',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'MartelSans'),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '\$6.25',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'MartelSans'),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              child: Text(
                                '1x  Barely There Strappy Heels',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'MartelSans'),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '\$6.25',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'MartelSans'),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              child: Text(
                                'Total',
                                style: TextStyle(
                                    color: Color(0xFF9BA9FF),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'MartelSans'),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              child: Text(
                                'Total order amount',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'MartelSans'),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '\$6.25',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'MartelSans'),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              child: Text(
                                'Delivery charge',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'MartelSans'),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '\$6.25',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'MartelSans'),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              child: Text(
                                'Total Amount',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'MartelSans'),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '\$6.25',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'MartelSans'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Your Address',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'MartelSans'),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Edit Address',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: Color(0xFF9BA9FF),
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'MartelSans'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          child: Text(
                            'Street Name: 1150  Late Avenue, Kingfisher, Oklahoma',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'MartelSans'),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          child: Text(
                            'Zip Code: 73750',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'MartelSans'),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          child: Text(
                            'Contact: 580-770-8809',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'MartelSans'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          child: Text(
                            'Payment Methods',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'MartelSans'),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'View All',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: Color(0xFF9BA9FF),
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'MartelSans'),
                          ),
                        ),
                      ],
                    ),
                    Container(child: Expanded(child: MyStatefulWidget())),
                  ])))
        ],
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  PaymentType _type = PaymentType.cash;

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text(
            'Cash on Delivery',
            style: TextStyle(fontSize: 12),
          ),
          trailing: Icon(Icons.payments_outlined),
          dense: true,
          contentPadding: EdgeInsets.zero,
          leading: Radio(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            activeColor: Color(0xFF9BA9FF),
            value: PaymentType.cash,
            groupValue: _type,
            onChanged: (PaymentType value) {
              setState(() {
                _type = value;
              });
            },
          ),
        ),
        ListTile(
          title:
              const Text('Visa or Mastercard', style: TextStyle(fontSize: 12)),
          trailing: Icon(Icons.payment_outlined),
          contentPadding: EdgeInsets.zero,
          dense: true,
          leading: Radio(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            activeColor: Color(0xFF9BA9FF),
            value: PaymentType.card,
            groupValue: _type,
            onChanged: (PaymentType value) {
              setState(() {
                _type = value;
              });
            },
          ),
        ),
        Container(
          width: 300,
          child: ElevatedButton(
            child: Text("Proceed to Payment"),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xFF9BA9FF)),
              padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 12, vertical: 12)),
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
