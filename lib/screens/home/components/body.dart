import 'package:flutter/material.dart';
import 'package:plant_app_ui/screens/home/components/header_with_search_box.dart';

///  Created by mac on 14/8/23.
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(),
        ],
      ),
    );
  }
}
