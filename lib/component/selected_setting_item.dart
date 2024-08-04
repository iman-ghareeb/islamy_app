import 'package:flutter/material.dart';
import 'package:islamy/themes/app_theme.dart';

class SelectedSettingItem extends StatelessWidget {
  final String selectedText;
  const SelectedSettingItem({Key? key, required this.selectedText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          selectedText,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: AppThemes.darkSecondaryyColor
          ),
        ),

        Icon(
            Icons.check,
            color: AppThemes.darkSecondaryyColor

        )
      ],
    );
  }
}
