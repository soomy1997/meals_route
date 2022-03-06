import 'package:flutter/material.dart';
import 'package:meals_route/models/campaign.dart';
import 'package:meals_route/utils/drawer.dart';
import 'package:meals_route/utils/provider.dart';
import 'package:meals_route/utils/tab_1.dart';
import 'package:meals_route/utils/tab_2.dart';
import 'package:meals_route/utils/tab_3.dart';
import 'package:provider/provider.dart';

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
    TabController? _tabController = TabController(length: 3, vsync: this);
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
                  ' المطعم المركزي ',
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
                  Tab(text: 'إحصائيات الوجبات'),
                  Tab(text: 'الحملات'),
                  Tab(text: 'التوصيل'),
                ]),
            Expanded(
              child: TabBarView(controller: _tabController, children: const [
                Tab1(),
                Tab2(),
                Tab3(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
