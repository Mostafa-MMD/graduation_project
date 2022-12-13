import 'package:flutter/material.dart';
import 'package:graduation_project/components/about/developer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);
  static String aboutScreenRoute = 'about screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Developer(
              image: 'assets/images/developers/mostafa.jpg',
              name: 'Mostafa Mohamed',
              jopName: 'Mobile Developer',
            ),
            Developer(
              image: 'assets/images/developers/mohamed.jpg',
              name: 'Mohamed Ahmed',
              jopName: 'Mobile Developer',
            ),
            Developer(
              image: 'assets/images/developers/elshimy.jpg',
              name: 'Mohamed Elshimy',
              jopName: 'Mobile Developer',
            ),
            Developer(
              image: 'assets/images/developers/mohand.jpg',
              name: 'Mohand Mohamed',
              jopName: 'Database Developer',
            ),
            Developer(
              image: 'assets/images/developers/sabry.jpg',
              name: 'Mohamed Sabry',
              jopName: 'Back-End Developer',
            ),
            Developer(
              image: 'assets/images/developers/kabany.jpeg',
              name: 'Ahmed Kabany',
              jopName: 'Back-End Developer',
            ),
            Developer(
              image: 'assets/images/developers/fandoly.jpeg',
              name: 'Mohamed Fandoly',
              jopName: 'Back-End Developer',
            ),
            Developer(
              image: 'assets/images/developers/abdelrahman.jpg',
              name: 'Abd Elrahman Abd Allah',
              jopName: 'Website Developer',
            ),
            Developer(
              image: 'assets/images/developers/belal.jpg',
              name: 'Belal Mohamed',
              jopName: 'Website Developer',
            ),
          ],
        ),
      ),
    );
  }
}
