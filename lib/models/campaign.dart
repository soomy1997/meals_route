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
  final String deliveryDate;
  Campaign({
    this.expanded = false,
    required this.campaignName,
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
    campaignName: 'Campaign A',
    mealType: 'الوجبات العادية',
    mealNumber: '38',
    campaignPhoneNumber: '05xxxxxxx',
    campaignLocation: 'مكة، شارع ٢٣٤ ',
    deliveryDate: '22-May-22',
    deliveryTime: '07:45 PM',
  ),
  Campaign(
    campaignName: 'Campaign B',
    mealType: 'وجبات مرضى الكلى',
    mealNumber: '3',
    campaignPhoneNumber: '05xxxxxxx',
    campaignLocation: 'مكة، شارع ٢٣٤ ',
    deliveryDate: '22-May-22',
    deliveryTime: '07:00 AM',
  ),
  Campaign(
    campaignName: 'Campaign C',
    mealType: 'وجبات خالية من الغلوتين',
    mealNumber: '7',
    campaignPhoneNumber: '05xxxxxxx',
    campaignLocation: 'مكة، شارع ٢٣٤ ',
    deliveryDate: '22-May-22',
    deliveryTime: '08:00 AM',
  ),
  Campaign(
    campaignName: 'Campaign D',
    mealType: 'وجبات قليلة الصوديوم',
    mealNumber: '19',
    campaignPhoneNumber: '05xxxxxxx',
    campaignLocation: 'مكة، شارع ٢٣٤ ',
    deliveryDate: '22-May-22',
    deliveryTime: '09:00 AM',
  ),
  Campaign(
    campaignName: 'Campaign G',
    mealType: 'وجبات خالية من اللاكتوز',
    mealNumber: '28',
    campaignPhoneNumber: '05xxxxxxx',
    campaignLocation: 'مكة، شارع ٢٣٤ ',
    deliveryDate: '22-May-22',
    deliveryTime: '07:00 AM',
  ),
];