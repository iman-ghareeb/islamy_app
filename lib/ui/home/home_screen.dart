import 'package:flutter/material.dart';
import 'package:islamy/component/default_scaffold.dart';
import 'package:islamy/component/functions.dart';
import 'package:islamy/providers/theme_provider.dart';
import 'package:islamy/themes/app_theme.dart';
import 'package:islamy/ui/hadeeth/hadeeth_screen.dart';
import 'package:islamy/ui/quraan/quraan_screen.dart';
import 'package:islamy/ui/radio/radio_screen.dart';
import 'package:islamy/ui/setting/setting_screen.dart';
import 'package:islamy/ui/tasbeh/tasbeh_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int currentIndex = 0;
   List<Widget> screens = [
     QuraanScreeen(),
     HadeethScreeen(),
     TasbehScreeen(),
     RadioScreeen(),
     SettingScreen()
   ];

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);

    return DefaultScaffold(
      context: context,
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(
                'assets/images/quran.png'
            ),
            ),
            label: getLocale(context)!.quranTap,
            backgroundColor:themeProvider.currentMode == ThemeMode.dark?AppThemes.darkPrimaryColor: AppThemes.primaryColor,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
                AssetImage('assets/images/hadeeth.png')
            ),
            label: getLocale(context)!.hadeethTap,

            backgroundColor:themeProvider.currentMode == ThemeMode.dark?AppThemes.darkPrimaryColor: AppThemes.primaryColor,

          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
                AssetImage('assets/images/sebha.png')
            ),
            label: getLocale(context)!.tsbehTap,

            backgroundColor:themeProvider.currentMode == ThemeMode.dark?AppThemes.darkPrimaryColor: AppThemes.primaryColor,

          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
                AssetImage(
                    'assets/images/radio.png'
                )
            ),
            label: getLocale(context)!.radioTap,

            backgroundColor:themeProvider.currentMode == ThemeMode.dark?AppThemes.darkPrimaryColor: AppThemes.primaryColor,

          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: getLocale(context)!.settings,

            backgroundColor:themeProvider.currentMode == ThemeMode.dark?AppThemes.darkPrimaryColor: AppThemes.primaryColor,

          ),
        ],
      ),
    );

  }
}
