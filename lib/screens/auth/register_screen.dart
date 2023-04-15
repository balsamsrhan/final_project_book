import 'package:book/widgets/app_button.dart';
import 'package:book/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  bool obscure = true;
  bool obscure2 = true;

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
              'مرحبا ، قم بالتسجيل للمتابعة!',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade500,
              ),
            ),
            SizedBox(height: 30.h),
            AppTextField(
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset('images/profile.svg'),
              ),
              textEditingController: _nameController,
              hintText: 'أدخل اسمك',
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 20.h),
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
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            AppTextField(
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset('images/pass.svg'),
              ),
              textEditingController: _passwordController,
              hintText: 'تأكيد كلمة المرور',
              keyboardType: TextInputType.phone,
              obscure: obscure2,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obscure2 = !obscure2;
                  });
                },
                icon: Icon(
                  obscure2
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            AppButton(
              onPress: () {
                Navigator.pushReplacementNamed(context, '/bn_screen');
              },
              text: 'الاشتراك',
              buttonColor: const Color(0XFFC19A6B),
            ),
            SizedBox(height: 20.h),
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
                SvgPicture.asset('images/facebook.svg'),
                SizedBox(width: 10.w),
                SvgPicture.asset('images/call.svg'),
              ],
            ),
            SizedBox(height: 40.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'لديك حساب؟',
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.h,),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login_screen');
                  },
                  child: Text(
                    'سجل الدخول',
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
