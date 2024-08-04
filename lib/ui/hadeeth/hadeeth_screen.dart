import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/component/functions.dart';
import 'package:islamy/providers/theme_provider.dart';
import 'package:islamy/themes/app_theme.dart';
import 'package:islamy/ui/hadeeth/hadeeth_details_screen.dart';
import 'package:provider/provider.dart';

class HadeethScreeen extends StatefulWidget {
   HadeethScreeen({Key? key}) : super(key: key);


  @override
  State<HadeethScreeen> createState() => _HadeethScreeenState();
}

class _HadeethScreeenState extends State<HadeethScreeen> {

  List<Hadeeth> ahadeeth = [];

  @override
  Widget build(BuildContext context) {

    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);

    if(ahadeeth.isEmpty){
      readHadeeth();
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
            'assets/images/hadith_header.png',
          width: 312,
          height: 219,
        ),
        Container(
          width: double.infinity,
          color:  themeProvider.currentMode == ThemeMode.dark? AppThemes.darkSecondaryyColor:AppThemes.primaryColor,

          height: 3,
        ),
         Padding(
          padding:  const EdgeInsets.symmetric(
            vertical: 8
          ),
          child:  Text(
              getLocale(context)!.elahadeeth,

              style: Theme.of(context).textTheme.titleMedium
          ),
        ),
        Container(
          width: double.infinity,
          color: themeProvider.currentMode == ThemeMode.dark? AppThemes.darkSecondaryyColor:AppThemes.primaryColor,

          height: 3,
        ),

        ahadeeth.isNotEmpty? Expanded(
          child: ListView.separated(
              itemBuilder: (context,index)=>Center(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>HadeethDetailsScreen(
                          title:ahadeeth[index].title,
                          content: ahadeeth[index].content,
                        )
                    )
                    );
                  },
                  child: Text(

                    ahadeeth[index].title,
                      style: Theme.of(context).textTheme.bodyLarge


                  ),
                ),
              ),
              separatorBuilder: (context, index)=> Container(
                color: themeProvider.currentMode == ThemeMode.dark? AppThemes.darkSecondaryyColor:AppThemes.primaryColor,

                height: 1,
                width: double.infinity,

              ),
              itemCount: ahadeeth.length
          ),
        ) : CircularProgressIndicator(
          color: themeProvider.currentMode == ThemeMode.dark? AppThemes.darkSecondaryyColor:AppThemes.primaryColor,

        ),
      ],
    );
  }

  void readHadeeth()async{
    String allAhadeth = await rootBundle.loadString('assets/files/ahadeth.txt');

    List<String> hadeethSplit = allAhadeth.trim().split('#');

    for(int i =0; i<hadeethSplit.length; i++){

      List<String> lines = hadeethSplit[i].trim().split('\n');

      String title = lines[0];
      List<String> content = lines;

      Hadeeth hadeeth = Hadeeth(title: title, content: content);

      ahadeeth.add(hadeeth);


    }
    
    setState(() {
      
    });
    
    
    
    
  }
}

class Hadeeth{
  final String title;
  final List<String> content;

  Hadeeth({required this.title, required this.content});
}