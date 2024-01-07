import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/event_backdrop.dart';
import '../widgets/event_card.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const AssetImage assetImage = AssetImage('assets/images/xenia.png');

    return const Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // BLUR BACKDROP
          EventBackDrop(
            assetImage: assetImage,
          ),

          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 30),

                  // APPBAR
                  AppbarWidget(),

                  SizedBox(height: 25),

                  // EVENT CARD
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: EventCard(
                      assetImage: assetImage,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
