import 'dart:ui';

abstract class HistoryType {
  final String logo;
  final Color color;
  final String text;

  HistoryType(this.logo, this.color, this.text);
}

class Pol extends HistoryType {
  Pol() : super('assets/icons/send.svg', const Color(0xff2b3340), 'انتقال پل');
}

class Deposit extends HistoryType {
  Deposit()
    : super(
        'assets/icons/recieve.svg',
        const Color(0xff2b3340),
        'انتقال به سپرده',
      );
}

class Recieve extends HistoryType {
  Recieve()
    : super('assets/icons/cash.svg', const Color(0xff01392e), 'دریافت از کارت');
}

class Shop extends HistoryType {
  Shop()
    : super(
        'assets/icons/basket.svg',
        const Color(0xff2b3340),
        'خرید از فروشگاه',
      );
}
