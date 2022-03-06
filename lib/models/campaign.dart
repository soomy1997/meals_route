import 'package:flutter/material.dart';

class Campaign {
  bool expanded;
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
