import 'dart:math';
import 'package:blubank/core/widgets/history_tile_type.dart';
import 'package:blubank/features/presentation/bloc/home_bloc.dart';
import 'package:blubank/features/presentation/bloc/home_state.dart';
import 'package:blubank/features/presentation/widgets/history_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class HomeDraggableScrollableSheet extends StatelessWidget {
  final double min;
  final double max;
  final double initial;

  const HomeDraggableScrollableSheet({
    super.key,

    required this.min,
    required this.max,
    required this.initial,
  });

  @override
  Widget build(BuildContext context) {
    final random = Random();
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state is HideState) {
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
                    Expanded(
                      child: ListView.builder(
                        controller: scrollController,
                        itemCount: 51,
                        itemBuilder: (BuildContext context, int index) {
                          // if (index == 0) {
                          //   return AppAds();
                          // }
                          final multiplier = random.nextInt(90) + 1; // عددی بین 1 تا 90

                          // محاسبه عدد نهایی
                          final rawAmount = multiplier * 100000;

                          // فرمت‌بندی عدد با کاما
                          final amount = NumberFormat('#,###').format(rawAmount);
                          // final amount = NumberFormat(
                          //   '#,###',
                          // ).format(rawAmount);

                          final type =
                              HistoryTypeEnum.values[random.nextInt(
                                HistoryTypeEnum.values.length,
                              )];
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 12,
                            ),
                            child: HistoryTile(
                              amount: state.isHide ? '***' : '$amount ریال',
                              type: type,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        } else {
          return SizedBox.shrink();
        }
      },
    );
  }
}
