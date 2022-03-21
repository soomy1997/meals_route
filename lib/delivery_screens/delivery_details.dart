import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/drawer.dart';

class DeliveryDetails extends StatelessWidget {
  const DeliveryDetails({Key? key}) : super(key: key);

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
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 195,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Name',
                              style: textheme.headline5,
                            ),
                            Text(
                              'Rasheed Ahmed',
                              style: textheme.subtitle1,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Phone Number',
                              style: textheme.headline5,
                            ),
                            Text(
                              '05xxxxx',
                              style: textheme.subtitle1,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Pickup Time',
                              style: textheme.headline5,
                            ),
                            Text(
                              'Mon 6:30 AM',
                              style: textheme.subtitle1,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Delivery Time',
                              style: textheme.headline5,
                            ),
                            Text(
                              'Mon 7:00 AM',
                              style: textheme.subtitle1,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Delay Time',
                              style: textheme.headline5,
                            ),
                            Text(
                              '10 Minutes',
                              style: textheme.subtitle1,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // const Text('PhoneNumber' '   rhy'),
                        // const Text('delivered Time' '   rhy'),
                        // const Text('delay Time' ' sfvhouif'),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
