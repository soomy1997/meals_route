import 'package:flutter/material.dart';
import 'package:meals_route/models/campaign.dart';
import 'package:meals_route/utils/provider.dart';
import 'package:provider/provider.dart';
import '../models/campaign.dart';
import '../utils/constants.dart';
import 'constants.dart';

class Tab2 extends StatefulWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  @override
  Widget build(BuildContext context) {
    var d = Provider.of<Demo>(context, listen: false);

    TextTheme textheme = Theme.of(context).textTheme;
    return Consumer<Demo>(
      builder: (context, value, child) {
        return Container(
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: campaign.length,
            itemBuilder: (BuildContext context, int index) {
              return ExpansionPanelList(
                animationDuration: const Duration(milliseconds: 500),
                dividerColor: Colors.green,
                elevation: 2,
                expansionCallback: (int item, bool status) {
                  value.changeStatus(index);
                  // d.changeStatus();
                  // print(d.expanded);
                  //  Consumer<Campaign>(campaign[index].expanded.changeStatus(true); )
                  // setState(() {
                  //   campaign[index].expanded = !campaign[index].expanded;
                  // });
                },
                children: [
                  ExpansionPanel(
                    isExpanded: campaign[index].expanded,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          campaign[index].campaignName,
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      );
                    },
                    canTapOnHeader: true,
                    body: Container(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    const WidgetSpan(
                                        child: Icon(
                                      Icons.phone,
                                      color: Colors.blue,
                                      size: 15,
                                    )),
                                    TextSpan(
                                      text: campaign[index].campaignPhoneNumber,
                                      style: textheme.bodyLarge,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    const WidgetSpan(
                                        child: Icon(
                                      Icons.phone,
                                      color: red,
                                      size: 15,
                                    )),
                                    TextSpan(
                                      text: campaign[index].campaignLocation,
                                      style: textheme.bodyLarge,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 40, right: 40, top: 20, bottom: 20),
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: campaign.length,
                              itemBuilder: (context, index) {
                                return Table(
                                  textDirection: TextDirection.rtl,
                                  border: const TableBorder(
                                      bottom: BorderSide(width: 1)),
                                  columnWidths: const {
                                    0: FractionColumnWidth(.1),
                                    1: FractionColumnWidth(.4),
                                  },
                                  defaultVerticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  children: [
                                    TableRow(
                                      children: [
                                        Text(
                                          campaign[index].mealType,
                                          style: textheme.bodyLarge,
                                        ),
                                        Text(
                                          campaign[index].mealNumber,
                                          style: textheme.bodyLarge
                                              ?.copyWith(color: red),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Table(
                                defaultColumnWidth: const FixedColumnWidth(180),
                                defaultVerticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                children: [
                                  TableRow(children: [
                                    Text(
                                      '١٥٠ وجبة',
                                      style: textheme.headline5
                                          ?.copyWith(color: red),
                                    ),
                                    Text(
                                      'المجموع',
                                      style: textheme.headline5,
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Text(
                                      campaign[index].deliveryTime,
                                      style: textheme.headline5
                                          ?.copyWith(color: red),
                                    ),
                                    Text(
                                      'وقت التوصيل',
                                      style: textheme.headline5,
                                    ),
                                  ]),
                                ]),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        );
      },
      // child:
    );
  }
}

List<Campaign> campaign = <Campaign>[
  Campaign(
    campaignName: 'حملة أ',
    mealType: 'الوجبات العادية',
    mealNumber: '٣٨',
    campaignPhoneNumber: '05xxxxxxx',
    campaignLocation: 'مكة، شارع ٢٣٤ ',
    deliveryTime: '١٢ مايو ٢٠٢٢',
  ),
  Campaign(
    campaignName: 'حملة ب',
    mealType: 'وجبات مرضى الكلى',
    mealNumber: '٣',
    campaignPhoneNumber: '05xxxxxxx',
    campaignLocation: 'مكة، شارع ٢٣٤ ',
    deliveryTime: '١٢ مايو ٢٠٢٢',
  ),
  Campaign(
    campaignName: 'حملة ث',
    mealType: 'وجبات خالية من الغلوتين',
    mealNumber: '٧',
    campaignPhoneNumber: '05xxxxxxx',
    campaignLocation: 'مكة، شارع ٢٣٤ ',
    deliveryTime: '١٢ مايو ٢٠٢٢',
  ),
  Campaign(
    campaignName: 'حملة ج',
    mealType: 'وجبات قليلة الصوديوم',
    mealNumber: '١٩',
    campaignPhoneNumber: '05xxxxxxx',
    campaignLocation: 'مكة، شارع ٢٣٤ ',
    deliveryTime: '١٢ مايو ٢٠٢٢',
  ),
  Campaign(
    campaignName: 'حملة ح',
    mealType: 'وجبات خالية من اللاكتوز',
    mealNumber: '٢٨',
    campaignPhoneNumber: '05xxxxxxx',
    campaignLocation: 'مكة، شارع ٢٣٤ ',
    deliveryTime: '١٢ مايو ٢٠٢٢',
  ),
];
