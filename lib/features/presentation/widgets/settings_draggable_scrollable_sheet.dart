import 'package:flutter/material.dart';

class SettingsDraggableScrollableSheet extends StatelessWidget {
  final double min;
  final double max;
  final double initial;

  const SettingsDraggableScrollableSheet({
    super.key,

    required this.min,
    required this.max,
    required this.initial,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: initial,
      minChildSize: min,
      maxChildSize: max,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Color(0xff1b1f28),
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
          ),
          child: ListView(
            controller: scrollController,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: .end,
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
                      Text(
                        'تنظیمات',
                        style: TextStyle(
                          color: Color(0xffe4e9ec),
                          fontFamily: 'Yekan',
                          fontSize: 14,
                          fontWeight: .w600,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const SettingsItems(
                        text: 'جزییات حساب',
                        icon: Icons.person,
                        subText: 'اطلاعات بانکی و شخصی',
                      ),
                      const SizedBox(height: 16),
                      const SettingsItems(
                        text: 'امنیت و حریم شخصی',
                        icon: Icons.security,
                        subText: 'رمز عبور و تراکنش، اثر انگشت و ...',
                      ),
                      const SizedBox(height: 16),
                      const SettingsItems(
                        text: 'اطلاع رسانی',
                        icon: Icons.notifications,
                        subText: 'تنظیمات و نوتیفیکیشن',
                      ),
                      const SizedBox(height: 16),
                      const SettingsItems(
                        text: 'نمایش بلو',
                        icon: Icons.format_paint_outlined,
                        subText: 'حالت روز و شب',
                      ),
                      const SizedBox(height: 16),
                      const SettingsItems(
                        text: 'به روزرسانی',
                        icon: Icons.security_update_outlined,
                        subText: 'بررسی نشخه برنامه',
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'عمومی',
                        style: TextStyle(
                          color: Color(0xffe4e9ec),
                          fontFamily: 'Yekan',
                          fontSize: 14,
                          fontWeight: .w600,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const SettingsItems(
                        text: 'بلو کلاب',
                        icon: Icons.card_giftcard,
                        subText: 'فعالیت بیشتر، جایزه بیشتر',
                      ),
                      const SizedBox(height: 16),
                      const SettingsItems(
                        text: 'پشتیبانی',
                        icon: Icons.question_mark,
                        subText: 'گفتگو، تماس و سوالات متداول',
                      ),
                      const SizedBox(height: 16),
                      const SettingsItems(
                        text: 'دعوت دوستان',
                        icon: Icons.insert_invitation_outlined,
                        subText: 'تنظیمات و نوتیفیکیشن',
                      ),
                      const SizedBox(height: 16),
                      const SettingsItems(
                        text: 'ثبت ایده ها و نظرات',
                        icon: Icons.comment,
                        subText: 'دشذ و بهبود بلو با همراهی شما',
                      ),
                      const SizedBox(height: 16),
                      const SettingsItems(
                        text: 'بلو',
                        icon: Icons.handshake,
                        subText: 'قوانین و شرایط، درباره ما',
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: Text(
                          'Version 3.8.0',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: .w600,
                          ),
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: .center,
                          children: [
                            Text(
                              'Made with ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: .w400,
                              ),
                            ),
                            Icon(
                              Icons.heart_broken,
                              color: Colors.blue,
                              size: 16,
                            ),
                            Text(
                              ' in Iran',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: .w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class SettingsItems extends StatelessWidget {
  final String text;
  final IconData icon;
  final String subText;
  final Color? color;
  final Widget? widget;

  const SettingsItems({
    super.key,
    required this.text,
    required this.icon,
    required this.subText,
    this.color,
    this.widget
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceEvenly,
      children: [
        widget ?? Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child:  Icon(Icons.arrow_back_ios, size: 20, color: Color(0xff4c5d6a)),
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: .end,
          children: [
            Text(
              text,
              style: TextStyle(
                fontFamily: 'Yekan',
                color: color ?? Color(0xffe3e8eb),
                fontWeight: .w500,
              ),
            ),
            Text(
              subText,
              style: TextStyle(
                fontFamily: 'Yekan',
                color: Color(0xffa1b2ba),
                fontWeight: .w400,
              ),
            ),
          ],
        ),
        const SizedBox(width: 16),
        Container(
          decoration: BoxDecoration(
            color: color ?? Color(0xff74abeb),
            shape: BoxShape.circle,
          ),
          child:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(icon, color: Color(0xff2b3340), size: 30),
          ),
        ),
      ],
    );
  }
}
