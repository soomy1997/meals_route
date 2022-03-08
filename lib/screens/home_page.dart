import 'package:flutter/material.dart';
import 'package:meals_route/utils/drawer.dart';
import 'package:meals_route/utils/tab_1.dart';
import 'package:meals_route/utils/tab_2.dart';

import '../utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController? _tabController = TabController(length: 2, vsync: this);
    TextTheme textheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.grey,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          );
        }),
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
                  'Central \n Kitchen',
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
                  Tab(text: 'For today'),
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
