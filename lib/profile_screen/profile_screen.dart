import 'package:flutter/material.dart';
import 'package:pcsb_event_screen/sidebar_menu/widgets/menu_widget.dart';

import '../bottom_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 307,
                    decoration: const BoxDecoration(
                      color: Colors.orange /*Color(0xFF50C2C9)*/,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppBar(
                      leading: const MenuWidget(),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: -100,
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: const ShapeDecoration(
                        color: Color(0x7CFFD700),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: -100,
                    top: 0,
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: const ShapeDecoration(
                        color: Color(0x7CFFD700),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 130,
                    left: 145,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                  ),
                  const Positioned(
                    top: 220,
                    left: 100,
                    child: Text(
                      'Ninad More',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // SHADOW CONTAINER
            Container(
              // Adjust the top margin as needed
              width: 323,
              height: 248,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 15,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
