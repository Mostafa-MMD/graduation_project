import 'package:flutter/material.dart';

class Developer extends StatelessWidget {
  Developer({
    Key? key,
    required this.image,
    required this.name,
    required this.jopName,
  }) : super(key: key);
  String image;
  String name;
  String jopName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 275,
          child: Image.asset(image),
        ),
        SizedBox(
          height: 5.0,
        ),
        Column(
          children: [
            Text(
              '* $name *',
              style: TextStyle(
                fontSize: 27.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              jopName,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                color: Colors.lightBlue[900]!,
              ),
            ),
            Divider(
              height: 20.0,
              thickness: 3,
              color: Colors.black26,
            ),
          ],
        ),
      ],
    );
  }
}
