// ignore: depend_on_referenced_packages
import 'package:bank_app/src/screens/auth_screens/login_screen.dart';
import 'package:bank_app/src/screens/data.dart';
import 'package:bank_app/src/screens/home_screen.dart';
import 'package:bank_app/src/screens/profile_screen.dart';
import 'package:bank_app/src/screens/splash_screen.dart';
import 'package:bank_app/src/screens/password_reset_screen.dart';
import 'package:go_router/go_router.dart';

const String pHome = '/home';
const String pLogin = '/login';
const String pSplash = '/splash';
const String pPasswordReset = '/password-reset';
const String pHome2 = "/home2";
const String pProfileScreen = "/profile";
const String pChangePasswordScreen = "/change-password";

final router = GoRouter(
  initialLocation: pHome, // Set the initial route
  routes: [
    GoRoute(
      path: pHome,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: pLogin,
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: pSplash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: pPasswordReset,
      builder: (context, state) => PasswordResetScreen(),
    ),
    GoRoute(
      path: pHome2,
      builder: (context, state) => Home(),
    ),
    GoRoute(
      path: pProfile,
      builder: (context, state) => const ProfileScreen(),
    ),
  ],
);
