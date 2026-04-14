import 'package:blubank/features/presentation/widgets/settings_draggable_scrollable_sheet.dart';
import 'package:blubank/features/presentation/widgets/tab_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardDraggableScallableSheet extends StatefulWidget {
  final double min;
  final double max;
  final double initial;

  const CardDraggableScallableSheet({
    super.key,
    required this.min,
    required this.max,
    required this.initial,
  });

  @override
  State<CardDraggableScallableSheet> createState() =>
      _CardDraggableScallableSheetState();
}

class _CardDraggableScallableSheetState
    extends State<CardDraggableScallableSheet> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: widget.initial,
      minChildSize: widget.min,
      maxChildSize: widget.max,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: const Color(0xff1b1f28),
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: ListView(
              controller: scrollController,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      width: 40,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TabBarItem(icon: Icons.key_outlined, text: 'رمز دوم پویا'),
                    TabBarItem(
                      icon: Icons.share_outlined,
                      text: 'شماره کارت و شبا',
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                Directionality(
                  textDirection: .rtl,
                  child: Text(
                    'تنظیمات',
                    style: TextStyle(
                      color: Color(0xffe4e9ec),
                      fontFamily: 'Yekan',
                      fontSize: 14,
                      fontWeight: .w600,
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                SettingsItems(
                  text: 'مسدودسازی موقت',
                  icon: CupertinoIcons.snow,
                  subText: 'بلوکارت را به صورت موقت غیرفعال کنید',
                  widget: Transform.scale(
                    scale: 0.9,
                    child: CupertinoSwitch(
                      onChanged: (value) {
                        setState(() {
                          isOn = !isOn;
                        });
                      },
                      value: isOn,
                      activeTrackColor: Color(0xff74abeb),
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                SettingsItems(
                  text: 'تنظیمات امنیتی',
                  icon: Icons.security_outlined,
                  subText: 'تغییر و دریافت مجدد رمز بلوکارت',
                ),
                const SizedBox(height: 18),
                SettingsItems(
                  text: 'تعویض بلو کارت',
                  icon: Icons.credit_card,
                  subText: 'میتوانید بلوکارت جدید سفارش دهید',
                ),
                const SizedBox(height: 18),
                SettingsItems(
                  text: 'غیر فعال کردن',
                  icon: Icons.not_interested_rounded,
                  subText: 'مسدودسازی بلوکارت در صورت مفقودی و ...',
                  color: Color(0xffff627f),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
