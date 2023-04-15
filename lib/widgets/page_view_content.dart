import 'package:book/widgets/app_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PageViewContent extends StatelessWidget {
  PageViewContent({
    required this.text,
    required this.supText,
    required this.image,
    required this.currentPage,
    Key? key,
  }) : super(key: key);
  final String image;
  final String text;
  final String supText;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            height: 267.h,
            width: 343.w,
            child: Image.asset('images/$image.png')),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppIndicator(
              isSelected: currentPage == 0,
              marginEnd: 15,
            ),
            AppIndicator(
              isSelected: currentPage == 1,
              marginEnd: 15,
            ),
            AppIndicator(
              isSelected: currentPage == 2,
            ),
          ],
        ),
        SizedBox(height: 30.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text,
                style: GoogleFonts.poppins(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0XFF444251),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.h),
              Text(
                supText,
                style: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade500,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
