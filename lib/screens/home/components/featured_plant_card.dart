import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';

///  Created by mac on 15/8/23.
class FeaturedPlantCard extends StatelessWidget {
  final Size size;
  final VoidCallback onPress;
  final String image;
  const FeaturedPlantCard(
      {super.key,
      required this.size,
      required this.onPress,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding / 2,
      ),
      width: size.width * 0.8,
      height: 185,
      child: InkWell(
        borderRadius: BorderRadius.circular(7),
        onTap: onPress,
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(image),
            ),
          ),
        ),
      ),
    );
  }
}
