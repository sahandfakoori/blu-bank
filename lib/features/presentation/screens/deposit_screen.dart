import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class DepositScreen extends StatefulWidget {
  const DepositScreen({super.key});

  @override
  State<DepositScreen> createState() => _DepositScreenState();
}

class _DepositScreenState extends State<DepositScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    @override
    void dispose() {
      controller.dispose();
      super.dispose();
    }

    return Scaffold(
      backgroundColor: Color(0xff1b1f28),
      appBar: AppBar(
        backgroundColor: Color(0xff1b1f28),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color(0xff1b1f28),
          statusBarIconBrightness: Brightness.light,
        ),
        actionsPadding: const EdgeInsetsGeometry.symmetric(horizontal: 12),
        actions: [
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(24),
            child: Container(
              height: 22,
              width: 22,
              decoration: BoxDecoration(
                color: Color(0xFF75abeb),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.question_mark, size: 15, color: Colors.black45),
            ),
          ),
          const Spacer(),
          Text(
            'انتقال',
            style: TextStyle(
              fontFamily: 'Yekan',
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              context.pop();
            },
            borderRadius: BorderRadius.circular(45),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(
                Icons.arrow_forward_ios,
                size: 20,
                color: Color(0xFF75abeb),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: .end,
                children: [
                  Text(
                    'اطلاعات مقصد را وارد کنید',
                    style: TextStyle(
                      fontFamily: 'Yekan',
                      fontSize: 16,
                      fontWeight: .w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Directionality(
                textDirection: .rtl,
                child: TextFormField(
                  controller: controller,
                  onTap: () {},
                  autofocus: true,
                  keyboardType:  TextInputType.number,
                  cursorColor: Color(0xFF75abeb),
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'شماره کارت یا شبا (بدون IR)',
                    labelStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Yekan',
                      color: Color(0xFF75abeb),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xFF75abeb),
                        width: 1,
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        width: 2,
                        color: Color(0xFF75abeb),
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: BoxBorder.all(width: 2 , color: Color(0xFF75abeb),),
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Text(
                      'اسکن کارت مقصد',
                      style: TextStyle(
                        fontFamily: 'Yekan',
                        fontSize: 16,
                        fontWeight: .w600,
                        color: Color(0xFF75abeb),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
