import 'package:flutter/material.dart';
import 'package:islamy/component/functions.dart';
import 'package:islamy/providers/theme_provider.dart';
import 'package:islamy/themes/app_theme.dart';
import 'package:provider/provider.dart';

class RadioScreeen extends StatelessWidget {
  const RadioScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
            'assets/images/radio_image.png',
          width: 412,
          height: 222,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 25
          ),
          child:  Text(
              getLocale(context)!.ezaa,

              style: Theme.of(context).textTheme.bodyLarge
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: IconButton(
                    color:themeProvider.currentMode == ThemeMode.dark?AppThemes.darkSecondaryyColor: AppThemes.primaryColor,
                    onPressed: (){},
                    icon: const Icon(Icons.skip_previous, size: 35,)
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: IconButton(
                    color:themeProvider.currentMode == ThemeMode.dark?AppThemes.darkSecondaryyColor: AppThemes.primaryColor,

                    onPressed: (){},
                    icon: const Icon(Icons.play_arrow, size: 50,)
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: IconButton(
                    color:themeProvider.currentMode == ThemeMode.dark?AppThemes.darkSecondaryyColor: AppThemes.primaryColor,

                    onPressed: (){},
                    icon: const Icon(Icons.skip_next, size: 35,)
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}