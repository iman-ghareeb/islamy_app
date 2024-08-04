import 'package:flutter/material.dart';
import 'package:islamy/component/functions.dart';
import 'package:islamy/component/selected_setting_item.dart';

import 'package:islamy/component/unselected_setting_item.dart';
import 'package:islamy/providers/locale_provider.dart';
import 'package:islamy/providers/theme_provider.dart';

import 'package:islamy/themes/app_theme.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatelessWidget {
   SettingScreen({Key? key}) : super(key: key);

  ThemeProvider? themeProvider ;
  LocaleProvider? localeProvider ;
  double? screenHihg;
  @override
  Widget build(BuildContext context) {

    //screenHihg =  MediaQuery.sizeOf(context).height;

    themeProvider = Provider.of<ThemeProvider>(context);
    localeProvider = Provider.of<LocaleProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(

            getLocale(context)!.themeSetting,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: (){
              changeTheme(context);
            },
            child: Container(
              padding: const EdgeInsetsDirectional.only(
                start: 10,
                top: 2.5,
                bottom: 2.5
              ),
              margin: const EdgeInsets.only(
                left: 10,

              ),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppThemes.darkSecondaryyColor,
                  width: 2
                ),
                borderRadius: BorderRadius.circular(11)
              ),
              child: Text(
                themeProvider!.currentMode == ThemeMode.light? getLocale(context)!.lightTheme:
                getLocale(context)!.darkTheme,

                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppThemes.darkSecondaryyColor
                ),
              ),
            ),
          ),

         const SizedBox(
            height: 20,
          ),
          Text(
            getLocale(context)!.langSetting,

            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: (){
              changeLanguage(context);
            },

            child: Container(
              padding: const EdgeInsetsDirectional.only(
                  start: 10,
                  top: 2.5,
                  bottom: 2.5
              ),
              margin: const EdgeInsets.only(
                left: 10,

              ),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: AppThemes.darkSecondaryyColor,
                      width: 2
                  ),
                  borderRadius: BorderRadius.circular(11)
              ),
              child: Text(
                localeProvider!.currentLang == 'ar'?
                getLocale(context)!.ar : getLocale(context)!.en,

                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppThemes.darkSecondaryyColor
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


  void changeTheme(BuildContext context){
    showModalBottomSheet(
        context: context,
        builder: (context)=>Container(
          height: 500,
          width: double.infinity,
          color: themeProvider!.currentMode== ThemeMode.light? Colors.white : AppThemes.darkPrimaryColor,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             InkWell(
               onTap: (){
                 themeProvider!.changeTheme(ThemeMode.light);
                 //currentTheme = ThemeMode.lightt
                 Navigator.pop(context);

               },
                 child: themeProvider!.currentMode == ThemeMode.light ?
                 SelectedSettingItem(selectedText: getLocale(context)!.lightTheme):
                 UnSelectedSettingItem(unSelectedText: getLocale(context)!.lightTheme)
             ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: (){
                  themeProvider!.changeTheme(ThemeMode.dark); //currentTheme = ThemeMode.dark
                  Navigator.pop(context);

                },
                  child: themeProvider!.currentMode == ThemeMode.dark ?
                  SelectedSettingItem(selectedText: getLocale(context)!.darkTheme):
                  UnSelectedSettingItem(unSelectedText: getLocale(context)!.darkTheme)
              ),
            ],
          ),
        ),
    );
  }
  void changeLanguage(BuildContext context){
    showModalBottomSheet(
        context: context,
        builder: (context)=>Container(
          width: double.infinity,

          color: themeProvider!.currentMode== ThemeMode.light? Colors.white : AppThemes.darkPrimaryColor,

          height: 500,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             InkWell(
               onTap: (){
                 localeProvider!.changeLanguage('en');
                 Navigator.pop(context);

               },
                 child:localeProvider!.currentLang == 'en'?
                 SelectedSettingItem(selectedText:  getLocale(context)!.en,):
                 UnSelectedSettingItem(unSelectedText: getLocale(context)!.en)
             ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: (){
                  localeProvider!.changeLanguage('ar');
                  Navigator.pop(context);
                },
                  child:localeProvider!.currentLang == 'ar'?
                  SelectedSettingItem(selectedText:  getLocale(context)!.ar,):
                  UnSelectedSettingItem(unSelectedText: getLocale(context)!.ar)
              ),
            ],
          ),
        ),
    );
  }
}
