import 'package:blubank/core/widgets/icon_widget.dart';
import 'package:blubank/features/presentation/widgets/settings_draggable_scrollable_sheet.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2b3340),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconWidget(icon: Icons.question_mark,size: 16,color: Color(0xff75abeb),h: 24, w: 24,),
                      const SizedBox(width: 8),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.share_outlined,
                          color: Color(0xff75abeb),
                          size: 22,
                        ),
                      ),
                      const SizedBox(width: 8),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.qr_code_scanner_outlined,
                          color: Color(0xff75abeb),
                          size: 22,
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Image(
                    image: AssetImage('assets/icons/p1.png'),
                    height: 60,
                    width: 60,
                    colorBlendMode: BlendMode.srcIn,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'سهند فکوری',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      fontFamily: 'Yekan',
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '09120001122',
                    style: TextStyle(
                      color: Color(0xffa5b3be),
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      fontFamily: 'Yekan',
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ),
            SettingsDraggableScrollableSheet(min: 0.74, initial: 0.74, max: 0.95),
          ],
        ),
      ),
    );
  }
}
