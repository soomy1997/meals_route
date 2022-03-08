import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meals_route/screens/home_page.dart';
import 'package:meals_route/utils/constants.dart';
import 'package:meals_route/models/provider.dart';
import 'package:provider/provider.dart';

main()  {
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: ChangeNotifierProvider<Demo>(
          create: (context) => Demo(), child: const HomePage()),
    );
  }
}
