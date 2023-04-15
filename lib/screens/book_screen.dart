import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({Key? key}) : super(key: key);

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 360.h,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        color: const Color(0XFFFFDE8A),
                        height: 300.h,
                        child: Column(
                          children: [
                            SizedBox(height: 30.h),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.favorite,
                                    color: Color(0XFFC19A6B),
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(
                                          context, '/bn_screen');
                                    },
                                    icon: const Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0XFFC19A6B),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset('images/book2.png'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'العادات الذرية',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 24.sp,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: const Color(0XFFC19A6B),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    '+',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    '1',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    '-',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      Text(
                        'المؤلف',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 20.sp,
                        ),
                      ),
                      Text(
                        'جيمس كلير',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500,
                          fontSize: 16.sp,
                        ),
                      ),
                      Text(
                        'الوصف',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 20.sp,
                        ),
                      ),
                      Text(
                        '''يعد هذا الكتاب للكاتب جيمس كلير منهج سهل لبناء عادات جيدة والتخلص من العادات السيئة، ويقدم لنا إطار عمل أياً كانت أهدافنا، من أجل تطوير مهاراتنا في كل يوم.''',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 70.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0XFF95959F),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.r),
                    topLeft: Radius.circular(15.r),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('images/cartBook.png'),
                    Text(
                      'إضافة الى السلة',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 20.sp,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0XFFC19A6B),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          '\$12.99',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
