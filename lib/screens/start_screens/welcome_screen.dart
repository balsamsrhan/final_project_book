import 'package:book/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/welcome.png'),
          Text(
            'مرحباً',
            style: GoogleFonts.poppins(
              fontSize: 30.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          Text(
            'أسرع خدمة توصيل للكتب لك.',
            style: GoogleFonts.poppins(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade500,
            ),
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              const Spacer(),
              Expanded(
                flex: 2,
                child: AppButton(
                  onPress: () {
                    Navigator.pushReplacementNamed(context, '/login_screen');
                  },
                  text: 'تسجيل الدخول',
                ),
              ),
              SizedBox(width: 20.w),
              Expanded(
                flex: 2,
                child: AppButton(
                  onPress: () {
                    Navigator.pushReplacementNamed(context, '/register_screen');
                  },
                  text: 'اشتراك',
                  textColor: Colors.black,
                  buttonColor: Colors.white,
                ),
              ),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
