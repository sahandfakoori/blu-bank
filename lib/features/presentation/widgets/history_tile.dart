import 'package:blubank/core/widgets/history_tile_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HistoryTile extends StatelessWidget {
  final String amount;
  final HistoryTypeEnum type;

  const HistoryTile({super.key, required this.amount, required this.type});

  @override
  Widget build(BuildContext context) {
    final historyType = type.create();
    return Row(
      mainAxisAlignment: .end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: .start,
          children: [
            Text(
              amount,
              textDirection: .rtl,
              style: TextStyle(
                fontSize: 14,
                fontWeight: .w500,
                color: Colors.white,
                fontFamily: 'Yekan',
                backgroundColor: (historyType.text == 'دریافت از کارت')
                    ? Color(0xff01392e)
                    : Colors.transparent,

              ),

            ),
          ],
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: .end,
            children: [
              Text(
                historyType.text,
                textDirection: .rtl,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: .w400,
                  fontFamily: 'Yekan',
                ),
              ),
              Text(
                'دوشنبه، 4 اسفند 1404 13:45',
                textDirection: .rtl,
                style: TextStyle(
                  color: Color(0xffa4b2bc),
                  fontSize: 12,
                  fontWeight: .w500,
                  fontFamily: 'Yekan',
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 14),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: historyType.color,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              historyType.logo,
              colorFilter: ColorFilter.mode(Color(0xffa1b3bd), BlendMode.srcIn),
            ),
          ),
        ),
      ],
    );
  }
}
