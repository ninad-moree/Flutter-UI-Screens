import 'package:flutter/material.dart';

class ShadowBoxContainer extends StatelessWidget {
  const ShadowBoxContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
