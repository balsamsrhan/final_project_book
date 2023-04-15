import 'package:book/widgets/app_indecator.dart';
import 'package:book/widgets/page_view_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  Color _color3 = HexColor("C19A6B");
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30.h),
          Expanded(
            child: PageView(
              physics: const BouncingScrollPhysics(),
              // physics: ClampingScrollPhysics(),
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              onPageChanged: (int currentPage) {
                setState(() {
                  _currentPage = currentPage;
                });
              },
              children: [
                PageViewContent(
                  text: 'إبحث عن كتابك',
                  supText: 'أسرع عملية لتوفير الكتب',
                  image: 'onboarding1',
                  currentPage: _currentPage,
                ),
                PageViewContent(
                  text: 'اعرض كتابك المستحدم للبيع',
                  supText: 'أسرع عملية لتوفير الكتب',
                  image: 'onboarding2',
                  currentPage: _currentPage,
                ),
                PageViewContent(
                  text: 'احصل على أسرع توصيل',
                  supText: 'أسرع عملية لتوفير الكتب',
                  image: 'onboarding3',
                  currentPage: _currentPage,
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                Visibility(
                  visible: _currentPage < 2,
                  maintainAnimation: true,
                  maintainSize: true,
                  maintainState: true,
                  child: InkWell(
                    onTap: () {
                      if (_currentPage < 2) {
                        _pageController.nextPage(
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeInOutBack);
                      }
                    },
                    child: Container(
                      height: 50.h,
                      width: 50.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color:  Color(0XFFC19A6B),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),

                Visibility(
                  visible: _currentPage < 2,
                  maintainAnimation: true,
                  maintainSize: true,
                  maintainState: true,
                  child: InkWell(
                    onTap: () {
                      if (_currentPage < 2) {
                        _pageController.animateToPage(
                          2,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeInOutBack,
                        );
                      }
                    },
                    child: Text(
                      'تخطي',
                      style: GoogleFonts.poppins(
                        fontSize: 20.sp,
                        color: const Color(0XFF444251),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                Visibility(
                  visible: _currentPage == 2,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, '/welcome_screen');
                    },
                    child: Text(
                      'ابدا',
                      style: GoogleFonts.poppins(
                        fontSize: 20.sp,
                        color: Colors.white,
                        backgroundColor: _color3,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}
class HexColor extends Color {
  static int _getColor(String hex) {
    String formattedHex =  "FF" + hex.toUpperCase().replaceAll("#", "");
    return int.parse(formattedHex, radix: 16);
  }
  HexColor(final String hex) : super(_getColor(hex));
}