import 'package:flutter/material.dart';
import 'SendMoneyPage.dart';

class SecondLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var elevatedButton = ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SendMoneyPage()),
            );
          },
          child: Text('Send Money'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue[700],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        );
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Options'),
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: elevatedButton,
      ),
    );
  }
}
