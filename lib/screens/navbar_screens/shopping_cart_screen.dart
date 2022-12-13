import 'package:flutter/material.dart';
import 'package:graduation_project/components/items/item_cart.dart';
import 'package:graduation_project/components/text/text_button.dart';
import 'package:graduation_project/screens/home_screen.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({Key? key}) : super(key: key);
  static const String shoppingCartRoute = 'shopping cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, HomeScreen.homeScreenRoute, (route) => false);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.lightBlue[900]!,
            size: 30.0,
          ),
        ),
        title: Text(
          'Shopping Cart',
          style: TextStyle(
            color: Colors.lightBlue[900]!,
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.width / 12.5,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.55,
                // color: Colors.red,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ItemCart(
                      image: 'assets/images/medicine.png',
                      name: 'Canister',
                      price: '10.00',
                    );
                  },
                ),
              ),
              Spacer(),
              ReusableTextButton(
                color: Colors.lightBlue[900]!,
                onPressed: () {},
                text: 'Buy',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
