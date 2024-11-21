import 'package:flutter/material.dart' show AppBar, AssetImage, BuildContext, CircleAvatar, Colors, Column, CrossAxisAlignment, EdgeInsets, Expanded, FontWeight, ListTile, ListView, Padding, Scaffold, SizedBox, StatelessWidget, Text, TextStyle, Widget;


class SendMoneyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Money'),
        backgroundColor: Colors.blue[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Select Payee',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/user1.jpg'),
                    ),
                    title: Text('Eric Peterson'),
                    subtitle: Text('8-(626)467-1698'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/user2.jpg'),
                    ),
                    title: Text('Douglas Adams'),
                    subtitle: Text('8-(626)467-1698'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/user3.jpg'),
                    ),
                    title: Text('Lawrence Fernandez'),
                    subtitle: Text('8-(626)467-1698'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/user4.jpg'),
                    ),
                    title: Text('Doris Larson'),
                    subtitle: Text('8-(626)467-1698'),
                  ),
                  // Add more ListTiles as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
