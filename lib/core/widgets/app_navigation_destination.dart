import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppNavigationDestination extends StatelessWidget {
  final String icon;
  final String label;

  const AppNavigationDestination({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      icon: SvgPicture.asset(
        icon,
        height: 30,
        width: 34,
        colorFilter: ColorFilter.mode(Color(0xFFFFFFFF), BlendMode.srcIn),
      ),
      selectedIcon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(Color(0xFF74abeb), BlendMode.srcIn),
        height: 34,
        width: 34,
      ),
      label: label,
    );
  }
}
