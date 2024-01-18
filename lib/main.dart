import 'package:flutter/material.dart';
import 'package:pcsb_event_screen/sidebar_menu/drawer_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const DrawerScreen(),
    );
  }
}
