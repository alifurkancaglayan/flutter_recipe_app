import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/components/my_bottom_nav_bar.dart';
import 'package:flutter_recipe_app/constants.dart';
import 'package:flutter_recipe_app/screens/profile/components/body.dart';
import 'package:flutter_recipe_app/size_config.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
      backgroundColor: kPrimaryColor,
      leading: SizedBox(),
      centerTitle: true,
      title: Text("Profile"),
      actions: [
        FlatButton(
          onPressed: () {},
          child: Text(
            "Edit",
            style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.defaultSize! * 1.6,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
