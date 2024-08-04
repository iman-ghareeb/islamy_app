import 'package:flutter/material.dart';
import 'package:islamy/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class UnSelectedSettingItem extends StatelessWidget {
  final String unSelectedText;
  const UnSelectedSettingItem({Key? key, required this.unSelectedText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);

    return Container(
      width: double.infinity,
      child: Text(
        unSelectedText,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: themeProvider.currentMode == ThemeMode.light? Colors.black:Colors.white
        ),
      ),
    );
  }
}
