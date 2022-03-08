import 'package:flutter/material.dart';

class Campaign extends ChangeNotifier {
  bool expanded = false;

  void changeStatus() {
    expanded = !expanded;
    notifyListeners();
  }

  final String campaignName;
  final String nationalityType;
  final String mealType;
  final String mealNumber;
  final String campaignPhoneNumber;
  final String campaignLocation;
  final String deliveryTime;
  final String deliveryDate;
  Campaign({
    this.expanded = false,
    required this.campaignName,
    required this.nationalityType,
    required this.mealType,
    required this.mealNumber,
    required this.campaignPhoneNumber,
    required this.campaignLocation,
    required this.deliveryTime,
    required this.deliveryDate,
  });
}

List<Campaign> campaign = <Campaign>[
  Campaign(
    campaignName: 'Campiagn A',
    nationalityType: 'Indian',
    mealType: 'Normal Meals',
    mealNumber: '38',
    campaignPhoneNumber: '05xxxxxxx',
    campaignLocation: 'Mecca, street 432 xx',
    deliveryDate: '22-May-22',
    deliveryTime: '07:45 PM',
  ),
  Campaign(
    campaignName: 'Campiagn B',
    nationalityType: 'Asian',
    mealType: 'Diabetic Meals',
    mealNumber: '3',
    campaignPhoneNumber: '05xxxxxxx',
    campaignLocation: 'Mecca, street 432 xx',
    deliveryDate: '22-May-22',
    deliveryTime: '07:00 AM',
  ),
  Campaign(
    campaignName: 'Campiagn C',
    nationalityType: 'Turkish',
    mealType: 'Gluten-Free Meals',
    mealNumber: '7',
    campaignPhoneNumber: '05xxxxxxx',
    campaignLocation: 'Mecca, street 432 xx',
    deliveryDate: '22-May-22',
    deliveryTime: '08:00 AM',
  ),
  Campaign(
    campaignName: 'Campiagn D',
    nationalityType: 'Kuwiti',
    mealType: 'Low-Sodium Meals',
    mealNumber: '19',
    campaignPhoneNumber: '05xxxxxxx',
    campaignLocation: 'Mecca, street 432 xx',
    deliveryDate: '22-May-22',
    deliveryTime: '09:00 AM',
  ),
  Campaign(
    campaignName: 'Campiagn G',
    nationalityType: 'Italian',
    mealType: 'Lactose-Free meals',
    mealNumber: '28',
    campaignPhoneNumber: '05xxxxxxx',
    campaignLocation: 'Mecca, street 432 xx',
    deliveryDate: '22-May-22',
    deliveryTime: '07:00 AM',
  ),
  Campaign(
    campaignName: 'Campiagn D',
    nationalityType: 'Greek',
    mealType: 'Renal meals',
    mealNumber: '17',
    campaignPhoneNumber: '05xxxxxxx',
    campaignLocation: 'Mecca, street 432 xx',
    deliveryDate: '22-May-22',
    deliveryTime: '07:00 AM',
  ),
];
