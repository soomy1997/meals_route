import 'package:flutter/material.dart';
import 'package:meals_route/models/all_meals.dart';

import 'constants.dart';

class Tab1 extends StatelessWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<AllMeals> allMeals = [
      AllMeals("lib/img/diabetic.png", 'Total Normal Meals', '210'),
      AllMeals("lib/img/diabetic.png", 'Total Renal Meals', '90'),
      AllMeals("lib/img/diabetic.png", 'Total Gluten Free Meals', '100'),
      AllMeals("lib/img/diabetic.png", 'Total Low Sodium Meals', '70'),
      AllMeals("lib/img/diabetic.png", 'Total Lactose Free Meals', '120'),
    ];
    TextTheme textheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '435',
                  textAlign: TextAlign.center,
                  style: textheme.headline2?.copyWith(color: red),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'Total Meals',
                  textAlign: TextAlign.center,
                  style: textheme.headline2,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return SizedBox(
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 100,
                                width: 90,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage(allMeals[index].imgUrl),
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
                                  allMeals[index].mealType,
                                  style: textheme.subtitle1,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 17),
                                  child: Text(
                                    allMeals[index].mealNumber,
                                    style: textheme.subtitle2
                                        ?.copyWith(color: red),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                );
              },
              itemCount: allMeals.length,
              shrinkWrap: true,
              padding: const EdgeInsets.all(5),
              scrollDirection: Axis.vertical,
            ),
          ),
        ],
      ),
    );
  }
}
