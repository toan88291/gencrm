import 'package:flutter/material.dart';
import 'features/auth/login_page.dart';
import 'features/features.dart';
import 'features/main_page.dart';
import 'theme/dynamic_theme_widget.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData (
        platform: TargetPlatform.android,
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
          },
        ),
      ),
      routes: {
        'splash': (context) => SplashScreen(),
        'main': (context) => MainPage(),
        'login': (context) => LoginPage(),
      },
      initialRoute: 'splash',
    );
  }
}
