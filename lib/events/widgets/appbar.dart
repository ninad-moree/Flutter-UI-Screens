import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.transparent.withOpacity(0.3),
          ),
          child: IconButton(
            // onPressed: () => Navigator.pop(context),
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 25,
            ),
          ),
        ),
      ],
    );
  }
}
