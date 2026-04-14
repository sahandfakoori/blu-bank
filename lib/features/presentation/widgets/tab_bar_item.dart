import 'package:flutter/material.dart';

class TabBarItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const TabBarItem({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 74,
        width: 180,
        decoration: BoxDecoration(
          color: Color(0xff2b3340),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: .center,
          spacing: 4,
          children: [
            Icon(
              icon,
              color: Color(0xff75abeb),
              size: 20,
            ),
            Text(
              text,
              style: TextStyle(
                color: Color(0xff75abeb),
                fontFamily: 'Yekan',
                fontSize: 16,
                fontWeight: .w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}