import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/screens/home/components/title_with_custom_underline.dart';

///  Created by mac on 14/8/23.
class TitleWithMoreButton extends StatelessWidget {
  final VoidCallback function;
  final String text;
  const TitleWithMoreButton(
      {super.key, required this.function, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(title: text),
          const Spacer(),
          ElevatedButton(
            onPressed: function,
            child: const Text(
              'More',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
