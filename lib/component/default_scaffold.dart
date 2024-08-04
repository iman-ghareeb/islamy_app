import 'package:flutter/material.dart';
import 'package:islamy/component/functions.dart';
import 'package:islamy/providers/theme_provider.dart';
import 'package:islamy/themes/app_theme.dart';
import 'package:provider/provider.dart';

class DefaultScaffold extends StatelessWidget {
   BuildContext context;
   AppBar? appBar;
   BottomNavigationBar? bottomNavigationBar;
    Widget? body;
    //bool isDark = true;

   DefaultScaffold( {AppBar? appBar, BottomNavigationBar? bottomNavigationBar, required Widget body, required this.context }){
     this.body = body;
     appBar != null?appBar:  this.appBar = AppBar(
       title: Center(
         child: Text(
            getLocale(context)!.appBarTitle,

           style: Theme.of(context).textTheme.titleLarge,
         ),
       ),
     );
     this.bottomNavigationBar = bottomNavigationBar;
   }

  @override
  Widget build(BuildContext context) {
     ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Stack(
      children: [
        Image.asset(
          themeProvider.currentMode == ThemeMode.dark? "assets/images/dark_bg.png" :'assets/images/background.png',

        ),
        Scaffold(
          appBar: appBar,
          body: body,
          bottomNavigationBar: bottomNavigationBar,
        ),
      ],
    );
  }
}
