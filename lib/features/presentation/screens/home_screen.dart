import 'package:blubank/features/presentation/widgets/home_draggble_scrollabe_sheet.dart';
import 'package:blubank/core/widgets/icon_widget.dart';
import 'package:blubank/features/presentation/bloc/home_bloc.dart';
import 'package:blubank/features/presentation/bloc/home_event.dart';
import 'package:blubank/features/presentation/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state is HideState) {
          return Scaffold(
            backgroundColor: Color(0xff0f3768),
            body: Container(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent.withValues(alpha: 0.7),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color(0xff1659a8),
                    Color(0xff0f376a),
                    Color(0xff0f376a),
                    Color(0xff0f376a),
                  ],
                  tileMode: TileMode.mirror,
                ),
              ),
              child: Stack(
                children: [
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              IconWidget(icon: Icons.question_mark,size: 15 ,h: 22 , w: 22,),
                              const SizedBox(width: 10),
                              Icon(
                                Icons.notifications,
                                size: 26,
                                color: Color(0xffe1e0e0),
                              ),
                              const SizedBox(width: 10),
                              Icon(
                                Icons.search,
                                size: 26,
                                color: Color(0xffe1e0e0),
                              ),
                              const Spacer(),
                              IconWidget(icon: Icons.person, h: 22, w: 22, size: 20,),
                            ],
                          ),
                          const SizedBox(height: 30),
                          SizedBox(
                            height: 38,
                            child: Text(
                              state.isHide ? '*********' : '4,009,500,145 ریال',
                              textDirection: .rtl,
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: .w600,
                                fontFamily: 'Yekan',
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: .center,
                            children: [
                              Transform.rotate(
                                angle: 90 * 3.1415926535 / 180,
                                child: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'موجودی',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    // fontWeight: .w600,
                                    fontFamily: 'Yekan',
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => context.read<HomeBloc>().add(
                                  HideBalance(state.isHide),
                                ),
                                child: Icon(
                                  state.isHide
                                      ? Icons.not_interested_rounded
                                      : Icons.remove_red_eye_outlined,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              HomeIconWidget(
                                icon: Icons.ssid_chart_rounded,
                                text: 'گزارش مالی',
                                color_primary: Color(0xff3b5d78),
                                color_secondary: Color(0xffffffff),
                              ),
                              HomeIconWidget(
                                icon: Icons.sports_soccer_outlined,
                                text: 'باکس',
                                color_primary: Color(0xff3b5d78),
                                color_secondary: Color(0xffffffff),
                              ),
                              HomeIconWidget(
                                icon: Icons.add,
                                text: 'شارژ حساب',
                                color_primary: Color(0xffffffff),
                                color_secondary: Color(0xff3b5d78),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  HomeDraggableScrollableSheet(
                    min: 0.65,
                    initial: 0.65,
                    max: 1,
                  ),
                ],
              ),
            ),
          );
        } else {
          return SizedBox.shrink();
        }
      },
    );
  }
}

class HomeIconWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color_primary;
  final Color color_secondary;

  const HomeIconWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.color_primary,
    required this.color_secondary,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: color_primary,
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsetsGeometry.all(10),
            child: Icon(icon, size: 36, color: color_secondary),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          text,
          style: TextStyle(
            color: Color(0xfff3f2f2),
            fontWeight: .w400,
            fontSize: 16,
            fontFamily: 'Yekan',
          ),
        ),
      ],
    );
  }
}

// color light: #1758a8
// color dark: #0f3768
// color bootomsheet : #1b1f28
// color button : #74abeb
