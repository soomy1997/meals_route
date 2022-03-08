// import 'package:flutter/material.dart';
// import 'package:meals_route/models/all_meals.dart';
// import 'package:meals_route/screens/meals_menu.dart';

// import '../utils/drawer.dart';

// class MealCatyegory extends StatefulWidget {
//   const MealCatyegory({Key? key}) : super(key: key);

//   @override
//   State<MealCatyegory> createState() => _MealCatyegoryState();
// }

// class _MealCatyegoryState extends State<MealCatyegory> {
//   @override
//   Widget build(BuildContext context) {
//     TextTheme textheme = Theme.of(context).textTheme;

//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white10,
//         actions: [
//           Builder(
//             builder: (context) => IconButton(
//               icon: const Icon(
//                 Icons.arrow_forward_ios_sharp,
//                 color: Colors.grey,
//               ),
//               onPressed: () => Navigator.pop(context),
//             ),
//           ),
//         ],
//         leading: Builder(builder: (context) {
//           return IconButton(
//             icon: const Icon(
//               Icons.menu,
//               color: Colors.grey,
//             ),
//             onPressed: () => Scaffold.of(context).openDrawer(),
//           );
//         }),
//       ),
//       drawer: const MainDrawer(),
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: GridView.builder(
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//             ),
//             itemCount: allMeals.length,
//             itemBuilder: (BuildContext context, int index) {
//               return GestureDetector(
//                 onTap: () => Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: ((context) => const MealMenuScreen()))),
//                 child: Card(
//                   child: Center(
//                       child: Container(
//                     decoration:
//                         BoxDecoration(borderRadius: BorderRadius.circular(40)),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SizedBox(
//                           height: 100,
//                           width: 100,
//                           child: CircleAvatar(
//                             backgroundColor: Colors.transparent,
//                             child: ClipOval(
//                               child: Image.asset(
//                                 allMeals[index].imgUrl,
//                                 height: 100,
//                                 width: 100,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 8.0),
//                           child: Text(
//                             allMeals[index].mealType,
//                             style: textheme.headline4,
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       ],
//                     ),
//                   )),
//                 ),
//               );
//             }),
//       ),
//     );
//   }
// }
