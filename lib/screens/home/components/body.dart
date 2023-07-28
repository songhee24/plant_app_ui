import 'package:flutter/material.dart';
import 'package:plant_app_ui/screens/home/components/header_with_search_box.dart';
import 'package:plant_app_ui/screens/home/components/title_with_more_button.dart';

///  Created by mac on 14/8/23.
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const HeaderWithSearchBox(),
          TitleWithMoreButton(
            function: () {},
            text: 'More',
          ),
        ],
      ),
    );
  }
}
