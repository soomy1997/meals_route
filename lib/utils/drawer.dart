import 'package:flutter/material.dart';
import 'package:meals_route/screens/login.dart';
import 'package:meals_route/screens/settings.dart';

import 'constants.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            color: red,
            width: double.infinity,
            child: const SizedBox(
              height: 150,
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.add_circle_outline_sharp,
            ),
            title: const Text(
              'Add Campaigns',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const MealScreen(),
              //   ),
              // );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
            ),
            title: const Text(
              'Settings',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingScreen(),
                ),
              );
            },
          ),
          const Divider(
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: red,
            ),
            title: const Text(
              'LogOut',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
