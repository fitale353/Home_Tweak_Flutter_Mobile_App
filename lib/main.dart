import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/constants/app_constants.dart';
import 'core/routing/app_router.dart';
import 'core/theme/app_theme.dart';
import 'features/auth/presentation/providers/auth_provider.dart';

void main() {
  runApp(const HomeTweakApp());
}

class HomeTweakApp extends StatelessWidget {
  const HomeTweakApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: MaterialApp(
        title: AppConstants.appName,
        theme: AppTheme.lightTheme,
        initialRoute: '/',
        routes: AppRouter.routes,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
