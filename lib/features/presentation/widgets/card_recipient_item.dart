import 'package:flutter/material.dart';

class CardRecipientItem extends StatelessWidget {
  final String name;
  final String cardNumber;
  final String image;
  final String logo;

  const CardRecipientItem({
    super.key,
    required this.name,
    required this.image,
    required this.logo,
    required this.cardNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .end,
      children: [
        Column(
          crossAxisAlignment: .end,
          children: [
            Text(
              name,
              style: TextStyle(
                fontSize: 14,
                fontWeight: .w500,
                fontFamily: 'Yekan',
                color: Color(0xffe3e3e3),
              ),
              textDirection: .rtl,
            ),
            const SizedBox(height: 8),
            Text(cardNumber, style: TextStyle(fontFamily: 'Yekan',fontSize: 12,color: Color(0xffa3b4bd))),
          ],
        ),
        const SizedBox(width: 16),
        Stack(
          children: [
            ClipOval(
              child: Image.asset(
                image,
                height: 54,
                width: 54,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff75abeb),
                ),
                child: Image.asset(logo, color: Colors.black87),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
