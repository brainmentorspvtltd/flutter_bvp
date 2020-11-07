import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  Razorpay _razorpay;
  String msg = "";
  _payNow() {
    const options = {
      'key': 'rzp_test_fJN31j9uLhF7sW',
      'amount': '1000',
      'name': 'Brain Mentors',
      'description': 'Test Payment',
      'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'}
    };
    _razorpay.open(options);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, successPayment);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, errorInPayment);
  }

  errorInPayment(PaymentFailureResponse response) {
    setState(() {
      msg = "Payment Fail $response";
    });
  }

  successPayment(PaymentSuccessResponse response) {
    String payId = response.paymentId;
    String orderId = response.orderId;
    setState(() {
      msg = "Payment Success $payId $orderId";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Razor Pay Demo', style: TextStyle(fontSize: 30)),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () {
              _payNow();
            },
            child: Text(
              'PayNow',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Text('Result of Trans $msg')
        ],
      ),
    );
  }
}
