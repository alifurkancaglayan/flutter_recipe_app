import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/constants.dart';
import 'package:flutter_recipe_app/screens/profile/components/info.dart';
import 'package:flutter_recipe_app/screens/profile/components/profile_menu_item.dart';
import 'package:flutter_recipe_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Info(
            image: "assets/images/pic.png",
            name: "Jhon Doe",
            email: "Jhondoe01@gmail.com",
          ),
          SizedBox(
            height: defaultSize * 2,
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/bookmark_fill.svg",
            title: "Saved Recipes",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/chef_color.svg",
            title: "Super plan",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/language.svg",
            title: "Chane Language",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/info.svg",
            title: "Info",
            press: () {},
          ),
        ],
      ),
    );
  }
}
