
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:meals_route/utils/drawer.dart';
import 'package:meals_route/utils/tab_1.dart';
import 'package:meals_route/utils/tab_2.dart';

import '../services/user_model.dart';
import '../utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List<String> images = [
    "lib/img/pic1.png",
    "lib/img/pic1.png",
    "lib/img/pic1.png",
    "lib/img/pic1.png",
    "lib/img/pic1.png",
  ];
  List<String> campaign = [
    "Saleh Campaign",
    "Khaled Campaign",
    "Fhahad Campaign",
    "SA’AD Campaign",
  ];
 

  @override
  Widget build(BuildContext context) {
    TabController? _tabController = TabController(length: 2, vsync: this);
    TextTheme textheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.menu_rounded,
              color: Colors.grey,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      drawer: const MainDrawer(),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/img/Pic1.png',
                  width: 100,
                  height: 100,
                ),
                Text(
                  'Central\nRestauarnt',
                  textAlign: TextAlign.center,
                  style: textheme.headline1,
                ),
              ],
            ),
            TabBar(
                labelColor: red,
                unselectedLabelColor: Colors.grey[500],
                controller: _tabController,
                tabs: const [
                  Tab(text: 'All Meals'),
                  Tab(text: 'Campaigns'),
                ]),
            Expanded(
              child: TabBarView(controller: _tabController, children: const [
                Tab1(),
                Tab2(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
