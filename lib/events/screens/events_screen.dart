import 'package:flutter/material.dart';
import 'package:pcsb_event_screen/events/widgets/appbar.dart';
import 'package:pcsb_event_screen/events/widgets/event_backdrop.dart';
import 'package:pcsb_event_screen/events/widgets/event_card.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          EventBackDrop(),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 60),

                  // APPBAR
                  AppbarWidget(),

                  SizedBox(height: 15),

                  // EVENT CARD
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: EventCard(),
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
