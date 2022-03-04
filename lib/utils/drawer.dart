import 'package:flutter/material.dart';

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
              Icons.restaurant_outlined,
            ),
            title: const Text(
              'About Us',
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
              Icons.language,
            ),
            title: const Text(
              'Language Settings',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => Page Name(),
              //   ),
              // );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.add_circle_outline_rounded,
            ),
            title: const Text(
              'Add Campaign',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => page name(),
              //   ),
              // );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.contact_support,
            ),
            title: const Text(
              'Contact Adminstration',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => page name(),
              //   ),
              // );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.door_front_door_outlined,
              color: red,
            ),
            title: const Text(
              'LogOut',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const SignInPage(),
              //   ),
              // );
            },
          ),
        ],
      ),
    );
  }
}
