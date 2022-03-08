import 'package:flutter/material.dart';
import 'package:meals_route/models/campaign.dart';
import 'package:meals_route/screens/breakfast_meals.dart';
import 'package:meals_route/utils/constants.dart';

import '../models/category_list.dart';
import '../utils/drawer.dart';

class DashbordPage extends StatefulWidget {
  const DashbordPage({Key? key}) : super(key: key);

  @override
  State<DashbordPage> createState() => _DashbordPageState();
}

class _DashbordPageState extends State<DashbordPage> {
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
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 10,right: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     SizedBox(height: 200,
                       child: Image.asset("lib/img/WhatsApp Image 2022-03-08 at 11.50.40 AM.jpeg")),
                      SizedBox(
                          height: 200,
                          child: Image.asset("lib/img/WhatsApp Image 2022-03-08 at 11.52.37 AM.jpeg"))
                    ],
                  ),
                ),
               Padding(
                  padding: const EdgeInsets.only(left: 30, top: 10, right: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: 200,
                          child: Image.asset(
                              "lib/img/WhatsApp Image 2022-03-08 at 11.58.35 AM.jpeg")),
                      SizedBox(
                          height: 200,
                          child: Image.asset(
                              "lib/img/WhatsApp Image 2022-03-08 at 12.01.23 PM.jpeg"))
                    ],
                  ),
                ),
              ],
            );
          }),
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
              fillColor: red,
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
