import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:developer' as developer;

import 'application.dart';
import 'theme/custom_theme_data.dart';
import 'theme/dynamic_theme_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.getInstance().then((prefs){
    return runApp(MyApp(prefs: prefs));
  });
}

class MyApp extends StatelessWidget {

  final String TAG = 'MyApp';

  final SharedPreferences prefs;

  MyApp( {this.prefs}){
    developer.log(prefs.toString(),name: TAG);
  }
  @override
  Widget build(BuildContext context) {
    return DynamicThemeWidget(
      customThemeData: CustomThemeData.light(),
      initThemeData: ThemeData.light().copyWith(
          primaryColor: Colors.blue,
          colorScheme: ColorScheme.light().copyWith(
            onPrimary: Colors.black,
            primary: Colors.grey,
          ),

          appBarTheme: AppBarTheme(
              textTheme: TextTheme(
                  title: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  )
              )
          ),
          tabBarTheme: TabBarTheme(
            labelColor: Colors.black87,
            labelStyle: GoogleFonts.quicksand().copyWith(
                color: Colors.black87,
                fontWeight: FontWeight.w800
            ),
            unselectedLabelColor: Colors.black54,
            unselectedLabelStyle: GoogleFonts.quicksand().copyWith(
                color: Colors.black54
            ),
          ),
          bottomAppBarColor: Colors.transparent
      ),
      initLocale: Locale('vi','VI'),
      child: Application(),
    );
  }
}

