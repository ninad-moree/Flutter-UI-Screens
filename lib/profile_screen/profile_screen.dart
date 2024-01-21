import 'package:flutter/material.dart';

import '../bottom_bar.dart';
import 'widgets/main_container.dart';
import 'widgets/shadow_container.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // MAIN CONTAINER WITH NAME AND PHOTO
            MainContainer(),

            SizedBox(height: 30),

            // SHADOW CONTAINER
            ShadowBoxContainer(),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
