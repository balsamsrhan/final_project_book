import 'package:book/screens/auth/login_screen.dart';
import 'package:book/screens/auth/register_screen.dart';
import 'package:book/screens/bn_screen/bottom_navigation_screen.dart';
import 'package:book/screens/book_screen.dart';
import 'package:book/screens/start_screens/on_boarding_screen.dart';
import 'package:book/screens/start_screens/splash_screen.dart';
import 'package:book/screens/start_screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('ar'),
            ],
            locale: const Locale('ar'),
            initialRoute: '/splash_screen',
            routes: {
              '/splash_screen': (context) => const SplashScreen(),
              '/onboarding_screen': (context) => const OnBoardingScreen(),
              '/welcome_screen': (context) => const WelcomeScreen(),
              '/register_screen': (context) => const RegisterScreen(),
              '/login_screen': (context) => const LoginScreen(),
              '/bn_screen': (context) => const BottomNavigationScreen(),
              '/book_screen': (context) => const BookScreen(),
            },
          );
        });
  }
}
