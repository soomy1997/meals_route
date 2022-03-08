import 'package:flutter/material.dart';
import 'package:meals_route/models/breakfast_meals.dart';
import 'package:meals_route/utils/drawer.dart';

class BreakfastMealsScreen extends StatefulWidget {
  const BreakfastMealsScreen({Key? key}) : super(key: key);

  @override
  State<BreakfastMealsScreen> createState() => _BreakfastMealsScreenState();
}

class _BreakfastMealsScreenState extends State<BreakfastMealsScreen> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey1 = GlobalKey<ScaffoldState>();

    TextTheme textheme = Theme.of(context).textTheme;
    return Scaffold(
      endDrawer: const MainDrawer(),
      appBar: AppBar(
        key: _scaffoldKey1,
        elevation: 0,
        backgroundColor: Colors.white10,
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(
                Icons.arrow_forward_ios_sharp,
                color: Colors.grey,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 20, bottom: 10),
            child: Text(
              'Breakfast Meal',
              style: textheme.headline3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: breakFastList.length,
              itemBuilder: ((context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 100,
                            width: 90,
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: SizedBox(
                                width: 70,
                                height: 70,
                                child: ClipOval(
                                  child: Image.asset(
                                    breakFastList[index].imgPath,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              breakFastList[index].foodName,
                              style: textheme.subtitle1,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
