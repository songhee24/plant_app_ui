import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

///  Created by mac on 14/8/23.
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/menu.svg'),
          onPressed: () {},
        ),
      ),
    );
  }
}
