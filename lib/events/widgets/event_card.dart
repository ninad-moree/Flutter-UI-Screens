import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    const AssetImage assetImage = AssetImage('assets/images/xenia.png');

    return GestureDetector(
      onTap: () {},
      child: Material(
        elevation: 8,
        color: Colors.transparent,
        shadowColor: Colors.transparent,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 350,
            width: 350,
            // width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: assetImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
