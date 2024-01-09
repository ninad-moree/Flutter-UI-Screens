import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/event_backdrop.dart';
import '../widgets/event_card.dart';
import '../widgets/event_info.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  // final String title;
  // final String description;
  // final String image;
  // final String fee, eventType, pointOfContact, date , time;
  // final int noOfParticipants;

  @override
  Widget build(BuildContext context) {
    const AssetImage assetImage = AssetImage('assets/images/xenia.png');

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const Stack(
                  children: [
                    //BLUR BACKGROUND IMAGE
                    EventBackDrop(assetImage: assetImage),

                    // EVENT CARD
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 100),
                        child: EventCard(assetImage: assetImage),
                      ),
                    ),
                  ],
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

                const SizedBox(height: 10),

                // EVENT TIME AND DATE WITH ICON (ROW)
                const EventInfo(
                  icon: Icons.calendar_today,
                  title: 'Event Date and Time',
                ),

                // EVENT INFO (ROW)
                const EventInfo(
                  icon: Icons.computer,
                  title: 'Technical event',
                ),

                // POINT OF CONTACT
                const EventInfo(
                  icon: Icons.person,
                  title: 'Point of Contact',
                ),

                // EVENT FEEE
                const EventInfo(
                  icon: Icons.attach_money,
                  title: 'Fee',
                ),

                const SizedBox(height: 25),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '254',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Participants'),
                      ],
                    ),
                  ),
                ),

                // REGISTER(button)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.08,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.withOpacity(0.6),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: const AppbarWidget(),
          ),
        ],
      ),
    );
  }
}
