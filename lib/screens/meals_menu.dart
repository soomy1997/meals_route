import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meals_route/models/campaign.dart';
import 'package:meals_route/screens/breakfast_meals.dart';
import 'package:meals_route/utils/constants.dart';

import '../models/category_list.dart';
import '../utils/drawer.dart';

class MealMenuScreen extends StatefulWidget {
  const MealMenuScreen({Key? key}) : super(key: key);

  @override
  State<MealMenuScreen> createState() => _MealMenuScreenState();
}

class _MealMenuScreenState extends State<MealMenuScreen> {
  @override
  Widget build(BuildContext context) {
    TextTheme textheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
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
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: campaign.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90, top: 10, right: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        campaign[index].mealType,
                        style: textheme.headline2,
                      ),
                      // SizedBox(
                      //   height: 33,
                      //   child: ElevatedButton(
                      //     style: ElevatedButton.styleFrom(
                      //       shape: RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.circular(10)),
                      //     ),
                      //     onPressed: () {},
                      //     child: Center(
                      //       child: Text(
                      //         "Add meals",
                      //       ),
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: foodCategoryList.length,
                    itemBuilder: (context, index) => foodCategoryCard(
                        foodCategoryList[index].imgPath,
                        foodCategoryList[index].foodCategory,
                        index),
                  ),
                )
              ],
            );
          }),
        floatingActionButton: new FloatingActionButton(
            elevation: 0.0,
            child: new Text("+",style: TextStyle(fontSize: 18),),
            backgroundColor: new Color(0xFFE57373),
            onPressed: () {})
    );
  }

  Widget foodCategoryCard(String imagePath, String name, int index) {
    TextTheme textheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const BreakfastMealsScreen())),
      child: Container(
        margin: const EdgeInsets.only(
          left: 25,
          top: 10,
          bottom: 10,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [BoxShadow(color: lightGrey, blurRadius: 10)]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              imagePath,
              height: 70,
              width: 70,
            ),
            Text(
              name,
              style: textheme.subtitle2,
            ),
            const RawMaterialButton(
              onPressed: null,
              fillColor: Color(0xFFE57373),
              shape: CircleBorder(),
              child: IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: white,
                    size: 10,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
