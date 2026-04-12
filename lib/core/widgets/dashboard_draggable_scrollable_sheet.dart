import 'package:blubank/core/widgets/app_ads.dart';
import 'package:flutter/material.dart';

class DashboardDraggableScrollableSheet extends StatelessWidget {
  final double min;
  final double max;
  final double initial;

  const DashboardDraggableScrollableSheet({
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
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Color(0xff1b1f28),
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
          ),
          child: Column(
            children: [
              Padding(
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
              const AppAds(),
              const SizedBox(height: 16),
              Directionality(
                textDirection: .rtl,
                child: GridView(
                  controller: scrollController,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  shrinkWrap: true,
                  children: [
                    DashboardIconWidget(
                      text: 'شارژ',
                      icon: Icons.sim_card_alert_rounded,
                    ),
                    DashboardIconWidget(
                      text: 'اینترنت',
                      icon: Icons.network_wifi,
                    ),
                    DashboardIconWidget(
                      text: 'قبض',
                      icon: Icons.receipt_long_outlined,
                    ),
                    DashboardIconWidget(
                      text: 'جونیور',
                      icon: Icons.child_care_rounded,
                    ),
                    DashboardIconWidget(
                      text: 'وام',
                      icon: Icons.monetization_on_rounded,
                    ),
                    DashboardIconWidget(
                      text: 'پرداخت خودکار',
                      icon: Icons.money,
                    ),
                    DashboardIconWidget(
                      text: 'چک صیادی',
                      icon: Icons.fact_check_outlined,
                    ),
                    DashboardIconWidget(
                      text: 'خدمات خودرو',
                      icon: Icons.car_crash_sharp,
                    ),
                    DashboardIconWidget(
                      text: 'دعوت دوستان',
                      icon: Icons.insert_invitation,
                    ),
                    DashboardIconWidget(
                      text: 'برگشت پول',
                      icon: Icons.keyboard_return,
                    ),
                    DashboardIconWidget(text: 'دًنگ', icon: Icons.share),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class DashboardIconWidget extends StatelessWidget {
  final String text;
  final IconData icon;

  const DashboardIconWidget({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xff2b3340),
          ),
          child: Padding(
            padding: EdgeInsetsGeometry.all(8),
            child: Icon(icon, size: 40, color: Color(0xff7caeec)),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            color: Color(0xff878c90),
            fontWeight: .w700,
              fontFamily: 'Yekan'
          ),
        ),
      ],
    );
  }
}
