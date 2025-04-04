import 'package:acha_facil/presentation/home_screen/home_screen_page.dart';
import 'package:acha_facil/presentation/medicines/medicines_page.dart';
import 'package:acha_facil/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context) => const HomeScreenPage(),
        AppRoutes.medicines: (context) => const MedicinesPage(),
      },	
      // home: Scaffold(
      //   body: Center(
      //     child: HomeScreen(),
      //   ),
      // ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('pt', 'BR'),
      ],
    );
  }
}
