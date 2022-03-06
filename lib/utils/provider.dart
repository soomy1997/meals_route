import 'package:flutter/material.dart';
import 'package:meals_route/utils/tab_2.dart';

class Demo with ChangeNotifier {
  bool expanded = false;

   void changeStatus(int index ){
   campaign[index].expanded = !campaign[index].expanded;
    notifyListeners();
  }
}
