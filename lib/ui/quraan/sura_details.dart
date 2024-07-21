import 'package:flutter/material.dart';
import 'package:islamy/component/default_scaffold.dart';
import 'package:islamy/themes/app_theme.dart';

class SuraDetails extends StatelessWidget {

  final String suraName;
   String? suraText;
   SuraDetails({required this.suraName, this.suraText,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
        body: Card(
          margin:const EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 30
          ),
          elevation: 10,
          color: Colors.white.withOpacity(0.8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment:  MainAxisAlignment.center,
                children: [
                  Text(
                    'سورة  $suraName',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  IconButton(
                      onPressed: (){},
                      icon: const Icon(
                        Icons.play_circle,
                        size: 27.2,
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
              Text(
                'ذَلِكَ الْكِتَابُ لَا رَيْبَ فِيهِ هُدًى لِلْمُتَّقِينَ ',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400
                ),
              ),
            ],
          ),
        )
    );
  }
}
