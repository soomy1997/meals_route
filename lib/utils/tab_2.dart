import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:meals_route/models/campaign.dart';

import 'constants.dart';

class Tab2 extends StatefulWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  @override
  Widget build(BuildContext context) {
    List<Campaign> campaign = [
      Campaign('Saleh Campaign', 'Normal Meals', '38'),
      Campaign('Khaled Campaign', 'Renal Meals', '3'),
      Campaign('Fhahad Campaign', 'Gluten Free Meals', '7'),
      Campaign('SA’AD Campaign', 'Low Sodium Meals', '19'),
      Campaign('Sami Campaign', 'Lactose Free Meals', '28'),
    ];

    TextTheme textheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
          itemCount: campaign.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Container(
              height: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: FlipCard(
                fill: Fill.fillBack,
                direction: FlipDirection.HORIZONTAL, // default
                front: Card(
                  semanticContainer: true,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          campaign[index].campaignName,
                          style: textheme.headline3,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: campaign.length,
                            itemBuilder: (context, index) {
                              return Table(
                                  defaultColumnWidth:
                                      const FixedColumnWidth(150),
                                  defaultVerticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  children: [
                                    TableRow(children: [
                                      Text(
                                        campaign[index].mealType,
                                        style: textheme.bodyLarge,
                                      ),
                                      Text(
                                        campaign[index].mealNumber,
                                        style: textheme.bodyLarge
                                            ?.copyWith(color: red),
                                      ),
                                    ]),
                                  ]);
                            }),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, top: 8),
                          child: Table(
                              defaultColumnWidth: const FixedColumnWidth(80),
                              defaultVerticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              children: [
                                TableRow(children: [
                                  Text(
                                    'Total',
                                    style: textheme.headline5,
                                  ),
                                  Text(
                                    '150 Dishes',
                                    style: textheme.headline5
                                        ?.copyWith(color: red),
                                  ),
                                ]),
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
                back: Card(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text('Back'),
                        Text(
                          'Click here to flip back',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}