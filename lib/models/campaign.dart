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
  final String deliveryStatusImg;
  final Widget deliveryStatusMsg;
  final String company;

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
    required this.deliveryStatusImg,
    required this.deliveryStatusMsg,
    required this.company,
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
    deliveryStatusImg: 'lib/img/question.png',
    deliveryStatusMsg: expl,
    company: 'Rasheed Company',
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
    deliveryStatusImg: 'lib/img/done.png',
    deliveryStatusMsg: done,
    company: 'Rasheed Company',
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
    deliveryStatusImg: 'lib/img/x.png',
    deliveryStatusMsg: x,
    company: 'Rasheed Company',
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
    deliveryStatusImg: 'lib/img/done.png',
    deliveryStatusMsg: done,
    company: 'Rasheed Company',
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
    deliveryStatusImg: 'lib/img/x.png',
    deliveryStatusMsg: x,
    company: 'Rasheed Company',
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
    deliveryStatusImg: 'lib/img/question.png',
    deliveryStatusMsg: expl,
    company: 'Rasheed Company',
  ),
];

Widget done = const Text(
  'Recieved at the right time',
  style: TextStyle(
      color: Colors.green,
      fontWeight: FontWeight.normal,
      height: 1.75,
      fontSize: 12),
);
Widget x = const Text(
  'Delivery was over an hour late',
  style: TextStyle(
      color: Colors.red,
      fontWeight: FontWeight.normal,
      height: 1.75,
      fontSize: 12),
);
Widget expl = Text(
  'there is delay between 15 min to 30 min',
  style: TextStyle(
      color: Colors.yellow[700],
      fontWeight: FontWeight.normal,
      height: 1.75,
      fontSize: 12),
);
