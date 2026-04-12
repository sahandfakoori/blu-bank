import 'package:blubank/core/widgets/history_type.dart';

enum HistoryTypeEnum {
  deposit,
  pol,
  recieve,
  shop;

  HistoryType create() {
    switch (this) {
      case HistoryTypeEnum.deposit:
        return Deposit();

      case HistoryTypeEnum.pol:
        return Pol();

      case HistoryTypeEnum.recieve:
        return Recieve();

      case HistoryTypeEnum.shop:
        return Shop();
    }
  }
}
