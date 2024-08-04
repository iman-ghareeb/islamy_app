import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/component/default_scaffold.dart';
import 'package:islamy/providers/theme_provider.dart';
import 'package:islamy/themes/app_theme.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatefulWidget {

  final String suraName;
  final int index;//0



   SuraDetails({super.key, required this.suraName, required this.index});



  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> content = [];

  @override
  Widget build(BuildContext context) {
    if(content.isEmpty){//true
      readFile(widget.index);
    }

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
                    'سورة  ${widget.suraName}',
                    style: themeProvider.currentMode == ThemeMode.dark? Theme.of(context).textTheme.titleMedium!.copyWith(color: AppThemes.darkSecondaryyColor)
                        :Theme.of(context).textTheme.titleMedium
                  ),
                  IconButton(
                      onPressed: (){},
                      icon:  Icon(
                        Icons.play_circle,
                        size: 27.2,

                        color:themeProvider.currentMode == ThemeMode.dark? AppThemes.darkSecondaryyColor:Colors.black,
                      )
                  )

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
              content.isNotEmpty? Expanded(
                child: ListView.separated(
                    itemBuilder: (context,index){
                      print(index);
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "${content[index]} {${index+1}}",
                          textDirection: TextDirection.rtl,
                            style: themeProvider.currentMode == ThemeMode.dark? Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppThemes.darkSecondaryyColor)
                                :Theme.of(context).textTheme.bodyMedium
                        ),
                      );
                    } ,
                    separatorBuilder: (context, index)=> Container(
                      color: AppThemes.primaryColor,
                      height: 1,
                      width: double.infinity,

                    ),
                    itemCount: content.length
                ),
              ):CircularProgressIndicator(
                color: themeProvider.currentMode == ThemeMode.dark? AppThemes.darkSecondaryyColor:AppThemes.primaryColor,
              )
            ],
          ),
        )
    );
  }

  void readFile(int fileIndex)async{
    String fileContent= await rootBundle.loadString('assets/files/${fileIndex+1}.txt');
    List<String> lines = fileContent.trim().split('\n');

    setState(() {
      content = lines;

    });
  }
}



