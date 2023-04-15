import 'package:book/widgets/app_button.dart';
import 'package:book/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>{
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool obscure = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          children: [
            SizedBox(height: 30.h),
            Text(
              'مرحبًا',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            Text(
              'مرحبا ، سجل الدخول للمتابعة!',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade500,
              ),
            ),
            SizedBox(height: 30.h),
            AppTextField(
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset('images/email.svg'),
              ),
              textEditingController: _emailController,
              hintText: 'أدخل عنوان البريد الالكتروني',
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20.h),
            AppTextField(
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset('images/pass.svg'),
              ),
              textEditingController: _passwordController,
              hintText: 'أدخل كلمة المرور',
              keyboardType: TextInputType.phone,
              obscure: obscure,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obscure = !obscure;
                  });
                },
                icon: Icon(
                  obscure
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            AppButton(
              onPress: () {
                Navigator.pushReplacementNamed(context, '/bn_screen');
              },
              text: 'تسجيل الدخول',
              buttonColor: const Color(0XFFC19A6B),
            ),
            SizedBox(height: 40.h),
            Text(
              'أو المتابعة بواسطة حساب التواصل الاجتماعي',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade500,
              ),
            ),
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('images/google.svg'),
                SizedBox(width: 10.w),
                Text(
                  'قم بتسجيل الدخول باستخدام جوجل',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('images/facebook.svg'),
                SizedBox(width: 10.w),
                Text(
                  'قم بتسجيل الدخول باستخدام الفيسبوك',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ليس لديك حساب؟',
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/register_screen');
                  },
                  child: Text(
                    'إشتراك',
                    style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
