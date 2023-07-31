import 'package:flutter/material.dart';
import 'package:plant_app_ui/screens/details/components/image_with_icons.dart';
import 'package:plant_app_ui/screens/details/components/title_with_price.dart';

///  Created by mac on 15/8/23.
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageWithIcons(size: size),
          const TitleWithPrice(
            title: 'Angelica',
            country: 'Russia',
            price: 440,
          ),
        ],
      ),
    );
  }
}
