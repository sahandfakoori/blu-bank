import 'package:blubank/core/widgets/dashboard_draggable_scrollable_sheet.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0f3768),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent.withValues(alpha: 0.7),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color(0xff1659a8),
              Color(0xff0f376a),
              Color(0xff0f376a),
              Color(0xff0f376a),
            ],
            tileMode: TileMode.mirror,
          ),
        ),
        child: Stack(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(24),
                          child: Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                              color: Color(0xffdddddd),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.question_mark,
                              size: 20,
                              color: Colors.black45,
                            ),
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.person,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Image(
                      image: AssetImage('assets/icons/scanner_icon.png'),
                      height: 124,
                      width: 124,
                      colorBlendMode: BlendMode.srcIn,
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'اننقال و دریافت با کد QR',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        fontFamily: 'Yekan',
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                    const SizedBox(height: 16),
                    const Icon(
                      Icons.keyboard_double_arrow_down_outlined,
                      color: Colors.white,
                      size: 28,
                    ),
                  ],
                ),
              ),
            ),
            DashboardDraggableScrollableSheet(min: 0.65, initial: 0.65, max: 1),
          ],
        ),
      ),
    );
  }
}
