import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/components/my_bottom_nav_bar.dart';
import 'package:flutter_recipe_app/screens/home/components/body.dart';
import 'package:flutter_recipe_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/menu.svg"),
      ),
      centerTitle: true,
      title: Image.asset(
        "assets/images/logo.png",
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/search.svg"),
        ),
        SizedBox(
          width: SizeConfig.defaultSize! * 0.5,
        ),
      ],
    );
  }
}

