import 'package:flutter/material.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/home/presentation/screens/home_screen.dart';

class AppRouter {
  static Map<String, WidgetBuilder> get routes {
    return {
      '/': (context) => const LoginScreen(),
      '/home': (context) => const HomeScreen(),
    };
  }
}
