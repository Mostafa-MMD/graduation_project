import 'package:flutter/material.dart';
import 'package:graduation_project/screens/drawer_screens/screens/about_screen.dart';
import 'package:graduation_project/screens/drawer_screens/screens/date_bake_up_screen.dart';
import 'package:graduation_project/screens/drawer_screens/screens/general_screen.dart';
import 'package:graduation_project/screens/drawer_screens/screens/reports_screen.dart';
import 'package:graduation_project/screens/drawer_screens/screens/settings_screen.dart';
import 'package:graduation_project/screens/sign_screens/login_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/medicine2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Divider(
              height: 10.0,
              thickness: 0.7,
            ),
            ListTile(
              iconColor: Colors.lightBlue[900]!,
              leading: Icon(Icons.account_tree_outlined),
              title: Text(
                'General',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.green[800],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, GeneralScreen.generalScreenRoute);
              },
            ),
            Divider(
              height: 10.0,
              thickness: 0.7,
            ),
            ListTile(
              iconColor: Colors.lightBlue[900]!,
              leading: Icon(Icons.cloud_sync_outlined),
              title: Text(
                'Date Bake up',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.green[800],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(
                    context, DateBakeUpScreen.dateBakeUpScreenRoute);
              },
            ),
            Divider(
              height: 15.0,
              thickness: 0.7,
            ),
            ListTile(
              iconColor: Colors.lightBlue[900]!,
              leading: Icon(Icons.receipt_long_outlined),
              title: Text(
                'Reports',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.green[800],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, ReportsScreen.reportsScreenRoute);
              },
            ),
            Divider(
              height: 15.0,
              thickness: 0.7,
            ),
            ListTile(
              iconColor: Colors.lightBlue[900]!,
              leading: Icon(Icons.person_outline),
              title: Text(
                'About',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.green[800],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, AboutScreen.aboutScreenRoute);
              },
            ),
            Divider(
              height: 15.0,
              thickness: 0.7,
            ),
            ListTile(
              iconColor: Colors.lightBlue[900]!,
              leading: Icon(Icons.settings_outlined),
              title: Text(
                'Settings',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.green[800],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(
                    context, SettingsScreen.settingsScreenRoute);
              },
            ),
            Divider(
              height: 15.0,
              thickness: 0.7,
            ),
            ListTile(
              iconColor: Colors.lightBlue[900]!,
              leading: Icon(Icons.logout_outlined),
              title: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.green[800],
                ),
              ),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, LoginScreen.loginScreenRoute, (route) => false);
              },
            ),
            Divider(
              height: 15.0,
              thickness: 0.7,
            ),
          ],
        ),
      ),
    );
  }
}
