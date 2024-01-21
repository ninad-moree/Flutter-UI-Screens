import 'package:flutter/material.dart';

import '../widgets/menu_widget.dart';

class NonTechEventsScreen extends StatelessWidget {
  const NonTechEventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Non Tech Events',
          style: TextStyle(color: Colors.white),
        ),
        leading: const MenuWidget(),
      ),
    );
  }
}
