import 'package:flutter/material.dart';
import 'package:plant_app_ui/screens/home/components/featured_plant_card.dart';

///  Created by mac on 15/8/23.
class FeaturedPlantsList extends StatelessWidget {
  final Size size;
  const FeaturedPlantsList({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(
            size: size,
            onPress: () {},
            image: 'assets/images/bottom_img_1.png',
          ),
          FeaturedPlantCard(
            size: size,
            onPress: () {},
            image: 'assets/images/bottom_img_2.png',
          ),
        ],
      ),
    );
  }
}
