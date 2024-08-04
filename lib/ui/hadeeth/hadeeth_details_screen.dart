
import 'package:flutter/material.dart';
import 'package:islamy/component/default_scaffold.dart';
import 'package:islamy/providers/theme_provider.dart';
import 'package:islamy/themes/app_theme.dart';
import 'package:provider/provider.dart';

class HadeethDetailsScreen extends StatelessWidget {
  final String title;
  final List<String> content;
   HadeethDetailsScreen({Key? key, required this.title, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);

    return DefaultScaffold(
      context: context,
        body: Card(
          margin:const EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 30
          ),
          elevation: 10,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment:  MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: themeProvider.currentMode == ThemeMode.dark?Theme.of(context).textTheme.titleMedium!.copyWith(color: AppThemes.darkSecondaryyColor)
                        : Theme.of(context).textTheme.titleMedium
                  ),


                ],
              ),
              Container(
                color: AppThemes.primaryColor,
                height: 1,
                width: double.infinity,
                margin: const EdgeInsets.only(
                    right: 50,
                    left: 50,
                    bottom: 15
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          content[index+1],
                          textDirection: TextDirection.rtl,
                            style: themeProvider.currentMode == ThemeMode.dark?Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppThemes.darkSecondaryyColor)
                                : Theme.of(context).textTheme.bodyMedium

                        ),
                      );
                    } ,
                    itemCount: content.length-1,
                    ),

              )
            ],
          ),
        )
    );
  }
}
