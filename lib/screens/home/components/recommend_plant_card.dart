import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';

///  Created by mac on 15/8/23.
class RecommendPlantCard extends StatelessWidget {
  final Size size;

  final String image, title, country;
  final int price;
  final VoidCallback onPress;

  const RecommendPlantCard(
      {super.key,
      required this.size,
      required this.image,
      required this.title,
      required this.country,
      required this.price,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onPress,
        child: Column(
          children: [
            Ink.image(
              image: AssetImage(image),
              height: size.height * 0.22,
            ),
            Ink(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  )
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$title \n'.toUpperCase(),
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// assets/images/image_1.png
