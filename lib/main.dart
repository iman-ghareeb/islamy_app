import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/component/functions.dart';
import 'package:islamy/providers/locale_provider.dart';
import 'package:islamy/providers/theme_provider.dart';

import 'package:islamy/themes/app_theme.dart';

import 'package:islamy/ui/home/home_screen.dart';
import 'package:islamy/ui/quraan/sura_details.dart';
import 'package:islamy/ui/splash/splash_screen.dart';
import 'package:provider/provider.dart';
//ToDo =>  add fonts       dark theme        localization      setting screen

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (_)=>ThemeProvider(),
      ),
      ChangeNotifierProvider(
        create: (_)=>LocaleProvider(),
      ),
    ],
      child: const MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
// Car car = Car();
// Car c = Car();
  //
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    LocaleProvider localeProvider = Provider.of<LocaleProvider>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: themeProvider.currentMode,//light
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(localeProvider.currentLang),//en
      home: SplashScreen(),

    );
  }
}


