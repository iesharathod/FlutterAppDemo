import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'second_landing_page.dart';

void main() {
  runApp(PaymentLandingPage());
}

class PaymentLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payment App Landing Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hey Isha,'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue[900],
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.jpg'), // Add your profile image
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.blue[900],
              child: Column(
                children: [
                  Text(
                    'What would you like to do today?',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        icon: Icon(Icons.arrow_downward),
                        label: Text('Receive'),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          iconColor: Colors.blue[700],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                       ElevatedButton.icon(
                        icon: Icon(Icons.arrow_upward),
                        label: Text('Send'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SecondLandingPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[700],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  // Feature buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FeatureButton(icon: Icons.receipt, label: 'Pay Bills'),
                      FeatureButton(icon: Icons.favorite, label: 'Donate'),
                      FeatureButton(icon: Icons.people, label: 'Recipients'),
                      FeatureButton(icon: Icons.local_offer, label: 'Offers'),
                    ],
                  ),
                  SizedBox(height: 20),
                  // Recent transactions
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Recent Transactions',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  TransactionTile(name: 'Alexander Young', amount: 500, date: '19 Feb, 19', status: 'Sent'),
                  TransactionTile(name: 'Lisa Morono', amount: 2500, date: '02 Feb, 19', status: 'Received'),
                  TransactionTile(name: 'Bryan Valdez', amount: 600, date: '28 Jan, 19', status: 'Pending'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureButton extends StatelessWidget {
  final IconData icon;
  final String label;

  FeatureButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 40, color: Colors.blue[700]),
        SizedBox(height: 5),
        Text(label, style: TextStyle(fontSize: 14, color: Colors.blue[700])),
      ],
    );
  }
}

class TransactionTile extends StatelessWidget {
  final String name;
  final double amount;
  final String date;
  final String status;

  TransactionTile({required this.name, required this.amount, required this.date, required this.status});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.account_circle, size: 40, color: Colors.blue[900]),
      title: Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      subtitle: Text(date, style: TextStyle(color: Colors.grey[600])),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('\$$amount', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text(status, style: TextStyle(color: status == 'Received' ? Colors.green : Colors.red)),
        ],
      ),
    );
  }
}
