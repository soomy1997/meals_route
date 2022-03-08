import 'package:flutter/material.dart';
import 'package:meals_route/models/campaign.dart';
import 'package:meals_route/models/provider.dart';
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
                          campaign[index].nationalityType,
                          style: textheme.headline3,
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
                              Text(
                                campaign[index].campaignName,
                                style: textheme.subtitle1?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
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
                                      style: textheme.subtitle1,
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
                                      Icons.location_pin,
                                      color: red,
                                      size: 15,
                                    )),
                                    TextSpan(
                                      text: campaign[index].campaignLocation,
                                      style: textheme.subtitle1,
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
                                          campaign[index].mealNumber,
                                          style: textheme.subtitle2
                                              ?.copyWith(color: red),
                                        ),
                                        Text(
                                          campaign[index].mealType,
                                          style: textheme.subtitle2,
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
                                      'Total',
                                      style: textheme.headline5,
                                    ),
                                    Text(
                                      '150 Meals',
                                      style: textheme.headline5
                                          ?.copyWith(color: red),
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Text(
                                      'Delivery Time',
                                      style: textheme.headline5,
                                    ),
                                    Text(
                                      campaign[index].deliveryTime,
                                      style: textheme.headline5
                                          ?.copyWith(color: red),
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
