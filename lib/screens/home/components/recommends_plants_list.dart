import 'package:flutter/material.dart';
import 'package:plant_app_ui/screens/home/components/recommend_plant_card.dart';

///  Created by mac on 15/8/23.
class RecommendsPlantsList extends StatelessWidget {
  final Size size;
  const RecommendsPlantsList({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            size: size,
            image: 'assets/images/image_1.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            onPress: () {
              print('print');
            },
          ),
          RecommendPlantCard(
            size: size,
            image: 'assets/images/image_2.png',
            title: 'Angelica',
            country: 'Russia',
            price: 440,
            onPress: () {
              print('print');
            },
          ),
          RecommendPlantCard(
            size: size,
            image: 'assets/images/image_3.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            onPress: () {
              print('print');
            },
          ),
        ],
      ),
    );
  }
}
