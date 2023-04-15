import 'dart:ui';
import 'package:book/screens/bn_screen/Cart.dart';
import 'package:book/screens/bn_screen/FavirteScreens.dart';
import 'package:book/screens/bn_screen/booke.dart';
import 'package:book/screens/bn_screen/profile_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  List<Widget> screens = [HomeScreen(), FavirteScreens(), Cart(), bookse(), ProfileScreen()];
  bool isVisable = false;
  int initIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[initIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.grey,
        height: 50,
        animationDuration: Duration(microseconds: 200),
        items: [Icon(Icons.home,color: Colors.white,size: 30,),
          Icon(Icons.favorite,color: Colors.white,size: 30,),
          Icon(Icons.book,color: Colors.white,size: 30,),
          Icon(Icons.shopping_cart,color: Colors.white,size: 30,),
          Icon(Icons.person,color: Colors.white,size: 30,),
        ],
        onTap: (int val) {
          initIndex = val;
          setState(() {});
        },
        index : initIndex,
      ),
    );
  }
}
//   int _selectedPageIndex = 0;
//   late TextEditingController _searchController;
//   bool visible = true;
//
//   @override
//   void initState() {
//     super.initState();
//     _searchController = TextEditingController();
//   }
//
//   @override
//   void dispose() {
//     _searchController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final List<BnScreen> screens = <BnScreen>[
//       const BnScreen(title: 'الرئيسية', widget: HomeScreen()),
//       const BnScreen(title: 'المتجر', widget: HomeScreen()),
//       const BnScreen(title: 'السلة', widget: HomeScreen()),
//       const BnScreen(title: 'المنتجات', widget: HomeScreen()),
//       const BnScreen(title: 'الطلبات', widget: HomeScreen()),
//       const BnScreen(title: 'حسابك', widget: ProfileScreen()),
//     ];
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.only(top: 20.h),
//           child: screens[_selectedPageIndex].widget,
//         ),
//       ),
//       bottomNavigationBar: ClipRRect(
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(10.r),
//           topRight: Radius.circular(10.r),
//         ),
//         child: BottomNavigationBar(
//           onTap: (int selectedPageIndex) {
//             setState(() => _selectedPageIndex = selectedPageIndex);
//           },
//           currentIndex: _selectedPageIndex,
//           backgroundColor: const Color(0XFF95959F),
//           type: BottomNavigationBarType.fixed,
//           showSelectedLabels: false,
//           showUnselectedLabels: false,
//           selectedItemColor: Colors.white,
//           selectedIconTheme: const IconThemeData(
//             color: Colors.white,
//           ),
//           selectedLabelStyle: GoogleFonts.montserrat(
//             fontWeight: FontWeight.bold,
//             fontSize: 10.sp,
//           ),
//           selectedFontSize: 10.sp,
//           unselectedItemColor: Colors.white,
//           unselectedIconTheme: const IconThemeData(
//             color: Colors.white,
//           ),
//           unselectedLabelStyle: GoogleFonts.cairo(
//             fontSize: 10.sp,
//           ),
//           unselectedFontSize: 10.sp,
//           iconSize: 24,
//           elevation: 20,
//           items: const [
//             BottomNavigationBarItem(
//               activeIcon: Icon(Icons.home),
//               icon: Icon(Icons.home_outlined),
//               label: '',
//             ),
//             BottomNavigationBarItem(
//               activeIcon: Icon(Icons.shopping_bag),
//               icon: Icon(Icons.shopping_bag_outlined),
//               label: '',
//             ),
//             BottomNavigationBarItem(
//               activeIcon: Icon(Icons.shopping_cart),
//               icon: Icon(Icons.shopping_cart_outlined),
//               label: '',
//             ),
//             BottomNavigationBarItem(
//               activeIcon: Icon(Icons.category),
//               icon: Icon(Icons.category_outlined),
//               label: '',
//             ),
//             BottomNavigationBarItem(
//               activeIcon: Icon(Icons.access_time_filled_sharp),
//               icon: Icon(Icons.access_time_outlined),
//               label: '',
//             ),
//             BottomNavigationBarItem(
//               activeIcon: Icon(Icons.person),
//               icon: Icon(Icons.person_outline),
//               label: '',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
