import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';
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
          TitleWithCustomUnderline(title: 'Recommended'),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  final String title;
  const TitleWithCustomUnderline({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.3),
            ),
          )
        ],
      ),
    );
  }
}
