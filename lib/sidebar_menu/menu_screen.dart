import 'package:flutter/material.dart';

import 'model/menu_item.dart';

class MenuItems {
  static const profile = MenuItem('Profile', Icons.person);
  static const techEvents = MenuItem('Tech Events', Icons.code);
  static const nonTechEvents = MenuItem('Non Tech events', Icons.add_card);
  static const developers = MenuItem('Developers', Icons.computer);
  static const aboutUs = MenuItem('About Us', Icons.perm_device_information);

  static const menus = <MenuItem>[
    profile,
    techEvents,
    nonTechEvents,
    developers,
    aboutUs,
  ];
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({
    super.key,
    required this.currentItem,
    required this.onSelectedItem,
  });

  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),

              // Profile Section
              const Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Ninad More', // Replace with the actual user's name
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              // const Spacer(),

              const SizedBox(height: 30),

              // Listitle Section
              ...MenuItems.menus.map(buildMenuItems).toList(),

              const Spacer(flex: 2),

              // Logout Button
              ListTileTheme(
                selectedColor: Colors.black26,
                child: ListTile(
                  selectedTileColor: Colors.black26,
                  leading: const Icon(Icons.logout),
                  title: const Text('Logout'),
                  onTap: () {},
                ),
              ),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItems(MenuItem item) => ListTileTheme(
        selectedColor: Colors.white,
        child: ListTile(
          selectedTileColor: Colors.black26,
          selected: currentItem == item,
          minLeadingWidth: 20,
          leading: Icon(item.icon),
          title: Text(item.title),
          onTap: () => onSelectedItem(item),
        ),
      );
}
