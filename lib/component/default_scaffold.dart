import 'package:flutter/material.dart';

class DefaultScaffold extends StatelessWidget {

   AppBar? appBar;
   BottomNavigationBar? bottomNavigationBar;
    Widget? body;
   DefaultScaffold({AppBar? appBar, BottomNavigationBar? bottomNavigationBar, required Widget body }){
     this.body = body;
     appBar != null?appBar:  this.appBar = AppBar(
       title: Center(
         child: Text(
           'Islamy',
         ),
       ),
     );
     this.bottomNavigationBar = bottomNavigationBar;
   }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/background.png',

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
