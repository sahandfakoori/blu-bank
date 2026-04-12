import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  final String name;
  final String image;
  final String phoneNumber;
  const Contact({super.key, required this.name , required this.image , required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      children: [
        Stack(
          children: [
            ClipOval(
              child: Image.asset(
                image,
                height: 64,
                width: 64,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                height: 26,
                width: 26,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff75abeb),
                ),
                child: Image.asset(
                  'assets/icons/blu.png',
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xffe3e3e3),
          ),
        ),
        Text(
          phoneNumber,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xffa4b2bc),
            fontFamily: 'Yekan'
          ),
        ),
      ],
    );
  }
}
