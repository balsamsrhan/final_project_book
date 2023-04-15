import 'dart:ui';
import 'package:book/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? selectedItem;
  late PageController _pageController;
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 20.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              Image.asset(
                'images/welcome.png',
                height: 40.h,
                width: 40.w,
              ),
              const Spacer(),
              SvgPicture.asset('images/bag.svg'),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        SizedBox(
          height: 45,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.w),
            child: AppTextField(
              prefixIcon: Icon(Icons.search),
              textEditingController: _searchController,
              hintText: 'بحث',
              keyboardType: TextInputType.text,
            ),
          ),
        ),
        SizedBox(height: 20.h),
        SizedBox(
          height: 50.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(width: 16.w),
              ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsetsDirectional.only(end: 10.w),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: const Color(0XFFEDB66B),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Center(
                          child: Text(
                            'الكل',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: const Color(0XFFE28B14),
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
        SizedBox(height: 40.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              Text(
                'الكتب الجديدة',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 16.sp,
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  'اظهار الكل',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        SizedBox(
          height: 200.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(width: 16.w),
              ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.pushReplacementNamed(context, '/book_screen');
                    },
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(end: 10.w),
                      child: Column(
                        children: [
                          Image.asset('images/book.png'),
                          Text(
                            'ارض زيكولا',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade500,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              Text(
                'الكتب الأكثر مبيعا',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 16.sp,
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  'اظهار الكل',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        SizedBox(
          height: 200.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(width: 16.w),
              ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsetsDirectional.only(end: 10.w),
                    child: Column(
                      children: [
                        Image.asset('images/book.png'),
                        Text(
                          'ارض زيكولا',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade500,
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
