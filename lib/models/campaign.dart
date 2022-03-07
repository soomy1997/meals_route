import 'package:flutter/material.dart';

class Campaign extends ChangeNotifier {
  bool expanded = false;

  void changeStatus() {
    expanded = !expanded;
    notifyListeners();
  }

  final String campaignName;
  final String mealType;
  final String mealNumber;
  final String campaignPhoneNumber;
  final String campaignLocation;
  final String deliveryTime;
  Campaign({
    this.expanded = false,
    required this.campaignName,
    required this.mealType,
    required this.mealNumber,
    required this.campaignPhoneNumber,
    required this.campaignLocation,
    required this.deliveryTime,
  });
}
