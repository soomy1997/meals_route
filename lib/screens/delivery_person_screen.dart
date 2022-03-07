import 'package:flutter/material.dart';

import '../models/campaign.dart';
import '../utils/constants.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({Key? key}) : super(key: key);

  @override
  State<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    TextTheme textheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Campaign Pickup Meal',
          style: textheme.headline3?.copyWith(color: white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return SizedBox(
                height: 130,
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                campaign[index].campaignName,
                                style: textheme.headline4,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 17, right: 30),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          const WidgetSpan(
                                            child: Icon(
                                              Icons.access_time_rounded,
                                              color: red,
                                              size: 15,
                                            ),
                                          ),
                                          TextSpan(
                                            text: campaign[index].deliveryTime,
                                            style: textheme.bodyLarge,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 17,
                                      right: 20,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          const WidgetSpan(
                                            child: Icon(
                                              Icons.calendar_today_rounded,
                                              color: red,
                                              size: 15,
                                            ),
                                          ),
                                          TextSpan(
                                            text: campaign[index].deliveryDate,
                                            style: textheme.bodyLarge,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      const WidgetSpan(
                                        child: Icon(
                                          Icons.location_pin,
                                          color: red,
                                          size: 15,
                                        ),
                                      ),
                                      TextSpan(
                                        text: campaign[index].campaignLocation,
                                        style: textheme.bodyLarge,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 130,
                                child: MaterialButton(
                                  color: red,
                                  textColor: white,
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Text('Pickup'), // <-- Text
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.qr_code_scanner,
                                        size: 24.0,
                                        color: white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: SizedBox(
                                  height: 30,
                                  width: 130,
                                  child: MaterialButton(
                                    color: Colors.green,
                                    textColor: white,
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: const [
                                        Text('Recieved'), // <-- Text
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.qr_code_scanner,
                                          size: 24.0,
                                          color: white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   height: 30,
                              //   width: 120,
                              //   child: ElevatedButton.icon(
                              //     onPressed: () {},
                              //     icon: const Icon(
                              //       Icons.qr_code_scanner,
                              //       size: 20,
                              //     ), //icon data for elevated button
                              //     label: Text(
                              //       "PickUp",
                              //       style: textheme.bodyLarge
                              //           ?.copyWith(color: white),
                              //     ), //label text
                              //   ),
                              // ),
                            ],
                          ),
                        )
                      ],
                    )),
              );
            },
            itemCount: campaign.length,
            shrinkWrap: true,
            padding: const EdgeInsets.all(5),
            scrollDirection: Axis.vertical,
          ),
        ),
      ),
    );
  }
}
