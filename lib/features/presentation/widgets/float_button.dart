import 'package:blubank/core/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FloatButton extends StatelessWidget {
  const FloatButton({
    super.key,
    required bool isButtonVisible,
  }) : _isButtonVisible = isButtonVisible;

  final bool _isButtonVisible;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: AnimatedOpacity(
        opacity: _isButtonVisible ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 300),
        child: Visibility(
          visible: _isButtonVisible,
          child: FloatingActionButton.extended(
            extendedPadding: const EdgeInsets.symmetric(horizontal: 24),
            label: Text(
              '+ انتقال جدید',
              textDirection: .rtl,
              style: TextStyle(fontFamily: 'Yekan', color: Color(0xff1b1f28)),
            ),
            onPressed: () {
              context.pushNamed(AppRoutes.deposit.name);
            },
            backgroundColor: Color(0xFF75abeb),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
        ),
      ),
    );
  }
}