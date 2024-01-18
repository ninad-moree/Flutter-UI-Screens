import 'package:flutter/material.dart';

import '../widgets/menu_widget.dart';

class DeveloperScreen extends StatelessWidget {
  const DeveloperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Developers'),
        leading: const MenuWidget(),
      ),
    );
  }
}
