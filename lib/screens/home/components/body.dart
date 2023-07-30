import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/screens/home/components/header_with_search_box.dart';
import 'package:plant_app_ui/screens/home/components/recommends_plants_list.dart';
import 'package:plant_app_ui/screens/home/components/title_with_more_button.dart';

///  Created by mac on 14/8/23.
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(
            size: size,
          ),
          TitleWithMoreButton(function: () {}, text: 'Recommended'),
          const SizedBox(height: 22),
          RecommendsPlantsList(size: size),
          TitleWithMoreButton(function: () {}, text: 'Featured Plants'),
          Container(
            margin: const EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding / 2,
              bottom: kDefaultPadding / 2,
            ),
            width: size.width * 0.8,
            height: 185,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/images/bottom_img_1.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
