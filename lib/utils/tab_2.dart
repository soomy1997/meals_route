import 'package:flutter/material.dart';
import 'package:meals_route/models/campaign.dart';
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
    TextTheme textheme = Theme.of(context).textTheme;
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
              setState(() {
                campaign[index].expanded = !campaign[index].expanded;
              });
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
                        // color: campaign[index].colorsItem,
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
                                  style:
                                      textheme.headline5?.copyWith(color: red),
                                ),
                                Text(
                                  'المجموع',
                                  style: textheme.headline5,
                                ),
                              ]),
                              TableRow(children: [
                                Text(
                                  campaign[index].deliveryTime,
                                  style:
                                      textheme.headline5?.copyWith(color: red),
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
    // return Container(
    //   padding: const EdgeInsets.all(10),
    //   child: GridView.builder(
    //       itemCount: campaign.length,
    //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //           crossAxisCount: 2),
    //       itemBuilder: (context, index) {
    //         return Container(
    //           height: double.infinity,
    //           decoration: const BoxDecoration(
    //             borderRadius: BorderRadius.all(Radius.circular(20.0)),
    //           ),
    //           child: FlipCard(
    //             fill: Fill.fillBack,
    //             direction: FlipDirection.HORIZONTAL, // default
    //             front: Card(
    //               semanticContainer: true,
    //               child: Column(
    //                 children: <Widget>[
    //                   Padding(
    //                     padding: const EdgeInsets.only(top: 8.0),
    //                     child: Text(
    //                       campaign[index].campaignName,
    //                       style: textheme.headline3,
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: ListView.builder(
    //                         shrinkWrap: true,
    //                         itemCount: campaign.length,
    //                         itemBuilder: (context, index) {
    //                           return Table(
    //                               defaultColumnWidth:
    //                                   const FixedColumnWidth(150),
    //                               defaultVerticalAlignment:
    //                                   TableCellVerticalAlignment.middle,
    //                               children: [
    //                                 TableRow(children: [
    //                                   Text(
    //                                     campaign[index].mealType,
    //                                     style: textheme.bodyLarge,
    //                                   ),
    //                                   Text(
    //                                     campaign[index].mealNumber,
    //                                     style: textheme.bodyLarge
    //                                         ?.copyWith(color: red),
    //                                   ),
    //                                 ]),
    //                               ]);
    //                         }),
    //                   ),
    //                   Expanded(
    //                     child: Padding(
    //                       padding: const EdgeInsets.only(left: 8, top: 8),
    //                       child: Table(
    //                           defaultColumnWidth: const FixedColumnWidth(80),
    //                           defaultVerticalAlignment:
    //                               TableCellVerticalAlignment.middle,
    //                           children: [
    //                             TableRow(children: [
    //                               Text(
    //                                 'Total',
    //                                 style: textheme.headline5,
    //                               ),
    //                               Text(
    //                                 '150 Dishes',
    //                                 style: textheme.headline5
    //                                     ?.copyWith(color: red),
    //                               ),
    //                             ]),
    //                           ]),
    //                     ),
    //                   )
    //                 ],
    //               ),
    //             ),
    //             back: Card(
    //               child: Column(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 crossAxisAlignment: CrossAxisAlignment.center,
    //                 children: [
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                     children: [
    //                       const Icon(
    //                         Icons.phone,
    //                         color: Colors.blue,
    //                       ),
    //                       Text(
    //                         campaign[index].campaignPhoneNumber,
    //                         style: textheme.bodyLarge,
    //                       ),
    //                     ],
    //                   ),
    //                   const SizedBox(
    //                     height: 10,
    //                   ),
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                     children: [
    //                       const Icon(
    //                         Icons.location_pin,
    //                         color: red,
    //                       ),
    //                       Text(
    //                         campaign[index].campaignLocation,
    //                         style: textheme.bodyLarge,
    //                       ),
    //                     ],
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         );
    //       }),
    // );
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
}
