import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/event_backdrop.dart';
import '../widgets/event_card.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  // final String title;
  // final String description;

  @override
  Widget build(BuildContext context) {
    const AssetImage assetImage = AssetImage('assets/images/xenia.png');

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // BLUR BACKDROP
          const EventBackDrop(
            assetImage: assetImage,
          ),

          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 30),

                  // APPBAR
                  const AppbarWidget(),

                  const SizedBox(height: 25),

                  // EVENT CARD
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: EventCard(
                      assetImage: assetImage,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // EVENT TITLE
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Xenia',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),

                  // EVENT DESCRIPTION
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "PCSB welcomes you to the commencement ceremony of its annual techfest Xenia '22. ",
                      style: Theme.of(context).textTheme.bodyMedium!,
                      textAlign: TextAlign.justify,
                    ),
                  ),

                  const SizedBox(height: 30),

                  // EVENT TIME AND DATE WITH ICON (ROW)
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      children: [
                        Icon(Icons.calendar_today),
                        SizedBox(width: 8),
                        Text('Event Date and Time'),
                      ],
                    ),
                  ),

                  // EVENT PRICE WITH ICON (ROW)
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      children: [
                        Icon(Icons.attach_money),
                        SizedBox(width: 8),
                        Text('Event Price'),
                      ],
                    ),
                  ),

                  // PRICE AND REGISTER(button)
                  // Padding(
                  //   padding: const EdgeInsets.all(10),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       const Text(
                  //         'Event Price',
                  //         style: TextStyle(fontSize: 18),
                  //       ),
                  //       ElevatedButton(
                  //         onPressed: () {
                  //           // Handle registration button press
                  //         },
                  //         child: const Text('Register'),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
