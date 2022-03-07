import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:meals_route/screens/home_page.dart';
import 'package:meals_route/utils/constants.dart';
import 'package:meals_route/models/provider.dart';
import 'package:provider/provider.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey:
          "AAAA-HfpCAM:APA91bGDo17ruOKe3zD-O0Tk9bZjtoYvkTsjxSMoQgGgChx5ffHFjqQCREhF4L0N1iy-ViJ0smmTY3HA2x7CEWx8dcw3P03R6gd8w6YOjmmg1sD7I9tAWNvGUE0oI8ujwnf48KQ592WV",
      appId: "1:1067163650051:android:54b28d88e75814b9052636",
      messagingSenderId: "1067163650051",
      projectId: "meals-route",
    ),
  );
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
