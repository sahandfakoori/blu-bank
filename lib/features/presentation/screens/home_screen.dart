import 'package:flutter/material.dart';

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
    return Scaffold(
      backgroundColor: Color(0xff0f3768),
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(24),
                        child: Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            color: Color(0xffdddddd),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.question_mark,
                            size: 20,
                            color: Colors.black45,
                          ),
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.person,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Image(
                    image: AssetImage('assets/icons/scanner_icon.png'),
                    height: 124,
                    width: 124,
                    colorBlendMode: BlendMode.srcIn,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'اننقال و دریافت با کد QR',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  const SizedBox(height: 16),
                  const Icon(
                    Icons.keyboard_double_arrow_down_outlined,
                    color: Colors.white,
                    size: 28,
                  ),
                ],
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.65,
            minChildSize: 0.65,
            maxChildSize: 1,
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
                        width: 40,      // عرض خط
                        height: 4,      // ضخامت خط
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
                          if (index == 0) {
                            return Container(
                              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.red,
                              ),
                              child: const Center(
                                child: Text(
                                  'تبلیغات',
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                ),
                              ),
                            );
                          }

                          return ListTile(
                            title: Text(
                              'Item ${index - 1}',
                              style: const TextStyle(color: Colors.white),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

// color light: #1758a8
// color dark: #0f3768
// color bootomsheet : #1b1f28
// color button : #74abeb
