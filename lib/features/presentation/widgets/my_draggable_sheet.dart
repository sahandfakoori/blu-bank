import 'package:flutter/material.dart';

class MyDraggableSheet extends StatefulWidget {
  const MyDraggableSheet({super.key});

  @override
  State<MyDraggableSheet> createState() => _MyDraggableSheetState();
}

class _MyDraggableSheetState extends State<MyDraggableSheet> {
  final _controller = DraggableScrollableController();
  static const double minSnap = 0.5;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onChanged);
  }

  void _onChanged() {
    if (_controller.size <= 0.05) {
      _collapse();
    }
  }

  void _collapse() {
    _controller.animateTo(
      minSnap,
      duration: const Duration(milliseconds: 150),
      curve: Curves.easeInOut,
    );
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return DraggableScrollableSheet(
          controller: _controller,
          initialChildSize: 0.7,
          minChildSize: 0,
          maxChildSize: 1,
          snap: true,
          snapSizes: const [minSnap],
          expand: true,
          builder: (BuildContext context, ScrollController scrollController) {
            return DecoratedBox(
              decoration: const BoxDecoration(
                color: Color(0xff1b1f28),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    width: 40,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),                  CustomScrollView(
                    controller: scrollController,
                    slivers: [],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
