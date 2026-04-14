import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final IconData icon;
  final double? size;
  final double? h;
  final double? w;
  final Color? color;

  const IconWidget({
    super.key,
    required this.icon,
    this.size,
    this.color,
    this.h,
    this.w,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(24),
      child: Container(
        height: h ?? 28,
        width: w ?? 28,
        decoration: BoxDecoration(
          color: color ?? Color(0xffdddddd),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, size: size ?? 20, color: Colors.black45),
      ),
    );
  }
}
