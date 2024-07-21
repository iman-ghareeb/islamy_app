import 'package:flutter/material.dart';
import 'package:islamy/component/default_scaffold.dart';
import 'package:islamy/themes/app_theme.dart';
import 'package:islamy/ui/hadeeth/hadeeth_screen.dart';
import 'package:islamy/ui/quraan/quraan_screen.dart';
import 'package:islamy/ui/radio/radio_screen.dart';
import 'package:islamy/ui/tasbeh/tasbeh_screen.dart';

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
   ];

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
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
            label: 'Quraan',
            backgroundColor: AppThemes.primaryColor,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
                AssetImage('assets/images/hadeeth.png')
            ),
            label: 'Hadeth',
            backgroundColor: AppThemes.primaryColor,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
                AssetImage('assets/images/sebha.png')
            ),
            label: 'Tasbeeh',
            backgroundColor: AppThemes.primaryColor,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
                AssetImage(
                    'assets/images/radio.png'
                )
            ),
            label: 'Radio',
            backgroundColor: AppThemes.primaryColor,
          ),
        ],
      ),
    );

  }
}
