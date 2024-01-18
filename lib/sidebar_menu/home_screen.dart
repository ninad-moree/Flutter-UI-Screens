import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'model/menu_item.dart';
import 'menu_screen.dart';
import 'screens_for_menu_item_clicked/aboutus_screen.dart';
import 'screens_for_menu_item_clicked/developer_screen.dart';
import 'screens_for_menu_item_clicked/non_tech_events_screen.dart';
import 'screens_for_menu_item_clicked/profile_screen.dart';
import 'screens_for_menu_item_clicked/tech_events_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MenuItem currentItem = MenuItems.profile;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      borderRadius: 40,
      angle: -10,
      slideWidth: MediaQuery.of(context).size.width * 0.7,
      showShadow: true,
      drawerShadowsBackgroundColor: Colors.blueAccent,
      menuBackgroundColor: Colors.indigo,
      mainScreen: getScreen(),
      menuScreen: Builder(builder: (context) {
        return MenuScreen(
          currentItem: currentItem,
          onSelectedItem: (item) {
            setState(() {
              currentItem = item;
            });

            ZoomDrawer.of(context)!.close();
          },
        );
      }),
    );
  }

  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.profile:
        return const ProfileScreen();
      case MenuItems.techEvents:
        return const TechEventsScreen();
      case MenuItems.nonTechEvents:
        return const NonTechEventsScreen();
      case MenuItems.aboutUs:
        return const AboutUsScreen();
      case MenuItems.developers:
        return const DeveloperScreen();
      default:
        return Container(color: Colors.white);
    }
  }
}
