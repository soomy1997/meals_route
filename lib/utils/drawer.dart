import 'package:flutter/material.dart';
import 'package:meals_route/delivery_screens/delivery_status.dart';
import 'package:meals_route/screens/login.dart';
import 'package:meals_route/screens/meals_menu.dart';
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
              Icons.bar_chart_rounded,
            ),
            title: const Text(
              'Dashboard',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MealMenuScreen(),
                ),
              );
            },
          ),
          const Divider(
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(
              Icons.menu_book_rounded,
            ),
            title: const Text(
              'Meal Menu ',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MealMenuScreen(),
                ),
              );
            },
          ),
          const Divider(
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(
              Icons.timelapse
            ),
            title: const Text(
              'Delivery Status',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DeliveryStatus(),
                ),
              );
            },
          ),
          const Divider(
            thickness: 1,
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
