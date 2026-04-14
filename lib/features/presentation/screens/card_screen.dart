import 'package:blubank/core/widgets/icon_widget.dart';
import 'package:blubank/features/presentation/widgets/card_draggable_scallabe_sheet.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2b3340),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              children: [
                IconWidget(
                  icon: Icons.question_mark,
                  size: 15,
                  color: Color(0xff75abeb),
                  h: 22,
                  w: 22,
                ),
                const Spacer(),
                IconWidget(
                  icon: Icons.person,
                  size: 15,
                  color: Color(0xff75abeb),
                  h: 22,
                  w: 22,
                ),
              ],
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 90),
              Center(
                child: Image.asset('assets/images/card1.jpg', height: 430),
              ),
            ],
          ),

          CardDraggableScallableSheet(min: 0.30, initial: 0.65, max: 1),
        ],
      ),
    );
  }
}
