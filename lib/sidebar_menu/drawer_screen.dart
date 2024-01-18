import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../profile_screen/profile_screen.dart';
import 'drawer_menu_screen.dart';
import 'model/menu_item.dart';
import 'screens_for_menu_item_clicked/aboutus_screen.dart';
import 'screens_for_menu_item_clicked/developer_screen.dart';
import 'screens_for_menu_item_clicked/non_tech_events_screen.dart';
import 'screens_for_menu_item_clicked/tech_events_screen.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  MenuItem currentItem = MenuItems.profile;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      borderRadius: 40,
      angle: -10,
      slideWidth: MediaQuery.of(context).size.width * 0.7,
      showShadow: true,
      drawerShadowsBackgroundColor: Colors.black12,
      menuBackgroundColor: const Color.fromARGB(255, 29, 29, 29),
      mainScreen: getScreen(),
      menuScreen: Builder(builder: (context) {
        return DrawerMenuScreen(
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
