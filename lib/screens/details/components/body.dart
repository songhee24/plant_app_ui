import 'package:flutter/material.dart';
import 'package:plant_app_ui/screens/details/components/image_with_icons.dart';

///  Created by mac on 15/8/23.
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageWithIcons(size: size),
        ],
      ),
    );
  }
}
