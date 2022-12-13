import 'package:flutter/material.dart';

class ItemCart extends StatelessWidget {
  ItemCart({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
  }) : super(key: key);
  String image;
  String name;
  String price;

  @override
  Widget build(BuildContext context) {
    int number = 0;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 8,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blueGrey[100],
        ),
        height: MediaQuery.of(context).size.height / 5,
        child: Row(
          children: [
            Container(
              height: 90,
              padding: EdgeInsets.only(
                left: 7.5,
              ),
              child: Image.asset(image),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    name,
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  Row(
                    children: [
                      Text(
                        'price: ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.cancel_outlined,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 25.0,
                      child: FloatingActionButton(
                        mini: true,
                        onPressed: () {
                          number++;
                        },
                        child: Icon(
                          Icons.add,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.greenAccent,
                      child: Text(
                        '$number',
                        maxLines: 1,
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          //backgroundColor: Colors.blueGrey[300],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      width: 25.0,
                      //height: 10.0,
                      child: FloatingActionButton(
                        mini: true,
                        onPressed: () {
                          number--;
                        },
                        child: Icon(
                          Icons.remove,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
