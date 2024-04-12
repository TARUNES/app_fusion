import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9CDCCB),
        title: Text('More'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Navigate to home screen
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text('Orders'),
              onTap: () {
                // Navigate to orders screen
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // Navigate to settings screen
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text('Log Out'),
              onTap: () {
                // Implement log out functionality
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('My Account'),
            onTap: () {
              // Navigate to account details screen
            },
          ),
          ListTile(
            leading: Icon(Icons.credit_card),
            title: Text('Payment Methods'),
            onTap: () {
              // Navigate to payment methods screen
            },
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Shipping Address'),
            onTap: () {
              // Navigate to shipping address screen
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            onTap: () {
              // Navigate to notifications settings screen
            },
          ),
          ListTile(
            leading: Icon(Icons.security),
            title: Text('Privacy & Security'),
            onTap: () {
              // Navigate to privacy and security screen
            },
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language & Region'),
            onTap: () {
              // Navigate to language and region settings screen
            },
          ),
        ],
      ),
    );
  }
}
