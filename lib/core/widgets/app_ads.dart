import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AppAds extends StatefulWidget {
  const AppAds({super.key});

  @override
  State<AppAds> createState() => _AppAdsState();
}

class _AppAdsState extends State<AppAds> {

  late final PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController(viewportFraction: 0.9);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        SizedBox(
          height: 114,
          child: PageView.builder(
            controller: controller,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/images/ads${index + 1}.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),

        Positioned(
          bottom: 10,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white60.withAlpha(80),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4 , vertical: 2),
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: const ExpandingDotsEffect(
                  expansionFactor: 4,
                  dotHeight: 6,
                  dotWidth: 6,
                  dotColor: Color(0xffedd0c0),
                  activeDotColor: Colors.white,

                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
