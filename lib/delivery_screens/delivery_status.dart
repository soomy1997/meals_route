import 'package:flutter/material.dart';
import 'package:meals_route/delivery_screens/delivery_details.dart';
import 'package:meals_route/models/campaign.dart';

import '../utils/constants.dart';
import '../utils/drawer.dart';

class DeliveryStatus extends StatefulWidget {
  const DeliveryStatus({Key? key}) : super(key: key);

  @override
  State<DeliveryStatus> createState() => _DeliveryStatusState();
}

class _DeliveryStatusState extends State<DeliveryStatus> {
  @override
  Widget build(BuildContext context) {
    TextTheme textheme = Theme.of(context).textTheme;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Delivery Status',
            style: textheme.headline3?.copyWith(color: white),
          ),
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: const Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
          leading: Builder(builder: (context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          }),
        ),
        drawer: const MainDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DeliveryDetails(),
                ),
              );
            },
            child: ListView.builder(
                itemCount: campaign.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 130,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 100,
                            width: 90,
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: SizedBox(
                                  width: 70,
                                  height: 70,
                                  child: ClipOval(
                                    child: Image.asset(
                                      campaign[index].deliveryStatusImg,
                                    ),
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0, top: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  campaign[index].campaignName,
                                  style: textheme.headline4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    campaign[index].company,
                                    style: textheme.subtitle2,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: campaign[index].deliveryStatusMsg,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ));
  }
}
