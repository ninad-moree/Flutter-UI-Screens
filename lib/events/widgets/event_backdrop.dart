import 'dart:ui';

import 'package:flutter/material.dart';

class EventBackDrop extends StatelessWidget {
  const EventBackDrop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const AssetImage assetImage = AssetImage('assets/images/xenia.png');
    final Size screenSize = MediaQuery.of(context).size;

    return SizedBox(
      child: ClipRRect(
        child: Stack(
          children: [
            Image(
              height: screenSize.height * 0.45,
              image: assetImage,
              fit: BoxFit.cover,
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                // width: 400,
                // height: 800,
                color: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
