import 'package:flutter/material.dart';

import '../../screens/details_screen/details_screen.dart';

class ItemMedicine extends StatelessWidget {
  ItemMedicine({
    required this.image,
    required this.name,
    required this.price,
    required this.available,
  });

  String image;
  String name;

  // ممكن تتغير تبقا double
  String price;
  String available;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamedAndRemoveUntil(
            context, DetailsProducts.detailsProductsRoute, (route) => false);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                blurRadius: 10,
                color: Colors.black54,
              )
            ]),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              top: -5,
              child: Padding(
                padding: const EdgeInsets.all(7.5),
                child: Container(
                  height: MediaQuery.of(context).size.height / 8.0,
                  child: Image.asset(image),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Column(
                children: [
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            'price: ',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width / 22.0,
                              color: Colors.red,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            price,
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width / 22.0,
                              color: Colors.red,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        available,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 23.0,
                          color: Colors.red,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
