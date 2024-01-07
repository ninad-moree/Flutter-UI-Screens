import 'dart:ui';

import 'package:flutter/material.dart';

class EventBackDrop extends StatelessWidget {
  const EventBackDrop({
    super.key,
  });

  // change the image as per needed
  // final AssetImage assetImage;
  // final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    const AssetImage assetImage = AssetImage('assets/images/xenia.png');
    // const AssetImage assetImage = AssetImage(assetImage);

    return SizedBox(
      child: ClipRRect(
        child: Stack(
          children: [
            const Image(
              height: 440,
              image: assetImage,
              fit: BoxFit.cover,
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                width: 400,
                height: 800,
                color: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
