import 'package:flutter/material.dart';
import 'package:islamy/component/default_scaffold.dart';
import 'package:islamy/component/functions.dart';
import 'package:islamy/providers/theme_provider.dart';
import 'package:islamy/themes/app_theme.dart';
import 'package:provider/provider.dart';

class TasbehScreeen extends StatefulWidget {
  const TasbehScreeen({Key? key}) : super(key: key);

  @override
  State<TasbehScreeen> createState() => _TasbehScreeenState();
}

class _TasbehScreeenState extends State<TasbehScreeen> {

  int count = 0;
  int index = 0;
  List<String> tsabeh= [
    'سبحان الله',
    'الحمد لله',
    'لا اله الا الله',
    'الله اكبر' //index = 3   index =4
  ];
  double turns = 0;

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(
        top: 30
      ),
      child: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                print(
                  'index = $index, count = $count'
                );
                setState(() {
                  turns = turns+1 / 720;
                  if(count<33){
                    count++;
                  }else{
                    count = 0;
                    if(index<tsabeh.length-1){
                      index++;
                    }else{
                      index = 0;
                    }
                  }
                });
              },
              child: AnimatedRotation(
                duration:const Duration(milliseconds: 200) ,
                turns: turns+1 / 2,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Image.asset(
                      themeProvider.currentMode == ThemeMode.dark? 'assets/images/head_sebha_dark.png':'assets/images/head_sebha_logo.png',
                      width: 73,
                      height: 105,
                    ),
                    Padding(

                      padding:const EdgeInsets.only(
                        top: 75
                      ),
                      child: Image.asset(
                        themeProvider.currentMode == ThemeMode.dark?'assets/images/body_sebha_dark.png' : 'assets/images/body_sebha_logo.png',
                        width: 232,
                        height: 234,
                      ),
                    ),
                  ],
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 30
              ),
              child:  Text(
                  getLocale(context)!.numOfPrases,

                  style: Theme.of(context).textTheme.titleMedium
              ),
            ),
            Container(
              width: 69,
              height: 81,
              decoration: BoxDecoration(
                color:themeProvider.currentMode == ThemeMode.dark? AppThemes.darkPrimaryColor: AppThemes.primaryColor,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: Text(
                  '$count',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 25
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
               width: 137,
              // height: 51,
              decoration: BoxDecoration(
                  color:themeProvider.currentMode == ThemeMode.dark? AppThemes.darkSecondaryyColor: AppThemes.primaryColor,

                  borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: Text(
                tsabeh[index],
                  style:Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color:themeProvider.currentMode == ThemeMode.dark? Colors.black:Colors.white,
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}