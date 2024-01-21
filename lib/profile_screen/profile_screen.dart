import 'package:flutter/material.dart';
import 'package:pcsb_event_screen/sidebar_menu/widgets/menu_widget.dart';

import '../bottom_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
        leading: const MenuWidget(),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
