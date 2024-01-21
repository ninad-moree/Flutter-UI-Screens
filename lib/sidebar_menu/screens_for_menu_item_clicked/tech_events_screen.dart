import 'package:flutter/material.dart';

import '../widgets/menu_widget.dart';

class TechEventsScreen extends StatelessWidget {
  const TechEventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Tech Events',
          style: TextStyle(color: Colors.white),
        ),
        leading: const MenuWidget(),
      ),
    );
  }
}
