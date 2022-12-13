import 'package:flutter/material.dart';

import '../home_screen.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);
static String ordersScreenRoute = 'orders screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.white,
        title: Text(
          'Orders',
          style: TextStyle(
            color: Colors.lightBlue[900]!,
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.width / 12.5,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, HomeScreen.homeScreenRoute, (route) => false);
            },
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Colors.lightBlue[900]!,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Orders',
          style: TextStyle(
            fontSize: 40.0,
          ),
        ),
      ),
    );
  }
}
