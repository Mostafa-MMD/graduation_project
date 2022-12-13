import 'package:flutter/material.dart';
import 'package:graduation_project/components/text/text_form_field.dart';
import 'package:graduation_project/screens/drawer_screens/main_drawer.dart';
import '../../components/items/item_medicine.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const String mainScreenRoute = 'main screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: Icon(
              Icons.menu,
              color: Colors.lightBlue[900]!,
              size: MediaQuery.of(context).size.width / 12.5,
            ),
          ),
        ),
        title: Text(
          'Pharmacy',
          style: TextStyle(
            color: Colors.lightBlue[900]!,
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.width / 12.5,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(7.5),
            child: Image.asset('assets/images/image1.png'),
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 10.0,
        ),
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              child: ReusableTextFormField(
                text: 'Search For Medicine',
                prefix: Icon(Icons.search),
                textInputType: TextInputType.text,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.7,
              child: GridView.count(
                padding: EdgeInsets.all(10),
                mainAxisSpacing: 25.0,
                crossAxisSpacing: 35.0,
                crossAxisCount: 2,
                children: [
                  ItemMedicine(
                    image: 'assets/images/medicine.png',
                    name: 'Canister',
                    price: '10',
                    available: 'available',
                  ),
                  ItemMedicine(
                    image: 'assets/images/medicine.png',
                    name: 'Canister',
                    price: '10',
                    available: 'available',
                  ),
                  ItemMedicine(
                    image: 'assets/images/medicine.png',
                    name: 'Canister',
                    price: '10',
                    available: 'available',
                  ),
                  ItemMedicine(
                    image: 'assets/images/medicine.png',
                    name: 'Canister',
                    price: '10',
                    available: 'available',
                  ),
                  ItemMedicine(
                    image: 'assets/images/medicine.png',
                    name: 'Canister',
                    price: '10',
                    available: 'available',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//
