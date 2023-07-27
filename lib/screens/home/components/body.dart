import 'package:flutter/material.dart';
import 'package:plant_app_ui/screens/home/components/header_with_search_box.dart';
import 'package:plant_app_ui/screens/home/components/recommend_plant_card.dart';
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
          TitleWithMoreButton(function: () {}, text: 'More'),
          RecommendPlantCard(size: size),
        ],
      ),
    );
  }
}
