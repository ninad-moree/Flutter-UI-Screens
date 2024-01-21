import 'package:flutter/material.dart';

import '../widgets/menu_widget.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'About Us',
          style: TextStyle(color: Colors.white),
        ),
        leading: const MenuWidget(),
      ),
    );
  }
}
