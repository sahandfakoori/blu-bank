import 'package:blubank/core/router/app_routes.dart';
import 'package:blubank/core/widgets/icon_widget.dart';
import 'package:blubank/features/presentation/screens/deposit_screen.dart';
import 'package:blubank/features/presentation/widgets/card_recipient_item.dart';
import 'package:blubank/features/presentation/widgets/contact.dart';
import 'package:blubank/features/presentation/widgets/float_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DestinationsScreen extends StatefulWidget {
  const DestinationsScreen({super.key});

  @override
  State<DestinationsScreen> createState() => _DestinationsScreenState();
}

class _DestinationsScreenState extends State<DestinationsScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isButtonVisible = true;
  double _lastScrollOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.offset > _lastScrollOffset &&
        _scrollController.offset > 100) {
      if (_isButtonVisible) {
        setState(() {
          _isButtonVisible = false;
        });
      }
    } else if (_scrollController.offset < _lastScrollOffset) {
      if (!_isButtonVisible) {
        setState(() {
          _isButtonVisible = true;
        });
      }
    }
    _lastScrollOffset = _scrollController.offset;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b1f28),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatButton(isButtonVisible: _isButtonVisible),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                Row(
                  children: [
                    IconWidget(
                      icon: Icons.question_mark,
                      size: 15,
                      h: 22,
                      w: 22,
                      color: Color(0xFF75abeb),
                    ),
                    const SizedBox(width: 10),
                    Icon(
                      Icons.calendar_month_outlined,
                      size: 26,
                      color: Color(0xFF75abeb),
                    ),
                    const SizedBox(width: 10),
                    Icon(Icons.search, size: 26, color: Color(0xFF75abeb)),
                    const Spacer(),
                    IconWidget(
                      icon: Icons.person,
                      size: 20,
                      h: 22,
                      w: 22,
                      color: Color(0xFF75abeb),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'مشاهده همه',
                        style: TextStyle(
                          color: Color(0xff75abeb),
                          fontSize: 14,
                          fontFamily: 'Yekan',
                          fontWeight: .w600,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'مخاطبین',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Yekan',
                        fontWeight: .w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: .end,
                  spacing: 20,
                  children: [
                    Contact(
                      name: 'Sahand',
                      image: 'assets/images/s.jpg',
                      phoneNumber: '09109591393',
                    ),
                    Contact(
                      name: 'zeinab',
                      image: 'assets/images/z.jpg',
                      phoneNumber: '09010303883',
                    ),
                    Contact(
                      name: 'ahamd',
                      image: 'assets/images/a.jpg',
                      phoneNumber: '09191869524',
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: .end,
                  children: [
                    Text(
                      'مقصد ها',
                      textAlign: .right,
                      textDirection: .rtl,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: .w500,
                        color: Colors.white,
                        fontFamily: 'Yekan',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                CardRecipientItem(
                  name: 'سپنتا فکوری',
                  image: 'assets/icons/p1.png',
                  logo: 'assets/icons/blu.png',
                  cardNumber: '6219 8619 8444 0025',
                ),
                const SizedBox(height: 18),
                CardRecipientItem(
                  name: 'سهند فکوری',
                  image: 'assets/images/s.jpg',
                  logo: 'assets/icons/blu.png',
                  cardNumber: '6219 8619 0861 3978',
                ),
                const SizedBox(height: 18),
                CardRecipientItem(
                  name: 'احمد عبدلی',
                  image: 'assets/images/a.jpg',
                  logo: 'assets/icons/blu.png',
                  cardNumber: '6219 8619 6956 1225',
                ),
                const SizedBox(height: 18),
                CardRecipientItem(
                  name: 'زینب گلیج',
                  image: 'assets/images/z.jpg',
                  logo: 'assets/icons/blu.png',
                  cardNumber: '6219 8619 6622 7733',
                ),
                const SizedBox(height: 18),
                CardRecipientItem(
                  name: 'کیانوش کبیری',
                  image: 'assets/icons/p2.jpg',
                  logo: 'assets/icons/blu.png',
                  cardNumber: 'IR - 85 0560 1122 0000 4585 3620 01',
                ),
                const SizedBox(height: 18),
                CardRecipientItem(
                  name: 'سپنتا فکوری',
                  image: 'assets/icons/p1.png',
                  logo: 'assets/icons/blu.png',
                  cardNumber: '6219 8619 8444 0025',
                ),
                const SizedBox(height: 18),
                CardRecipientItem(
                  name: 'سپنتا فکوری',
                  image: 'assets/icons/p1.png',
                  logo: 'assets/icons/blu.png',
                  cardNumber: '6219 8619 8444 0025',
                ),
                const SizedBox(height: 18),
                CardRecipientItem(
                  name: 'سپنتا فکوری',
                  image: 'assets/icons/p1.png',
                  logo: 'assets/icons/blu.png',
                  cardNumber: '6219 8619 8444 0025',
                ),
                const SizedBox(height: 18),
                CardRecipientItem(
                  name: 'سپنتا فکوری',
                  image: 'assets/icons/p1.png',
                  logo: 'assets/icons/blu.png',
                  cardNumber: '6219 8619 8444 0025',
                ),
                const SizedBox(height: 18),
                CardRecipientItem(
                  name: 'سپنتا فکوری',
                  image: 'assets/icons/p1.png',
                  logo: 'assets/icons/blu.png',
                  cardNumber: '6219 8619 8444 0025',
                ),
                const SizedBox(height: 18),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
