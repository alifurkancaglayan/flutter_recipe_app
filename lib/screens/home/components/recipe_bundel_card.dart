import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/models/RecipeBundel.dart';
import 'package:flutter_recipe_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecipeBundleCard extends StatelessWidget {
  const RecipeBundleCard(
      {super.key, required this.recipeBundle, required this.press});

  final RecipeBundle recipeBundle;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          color: recipeBundle.color,
          borderRadius: BorderRadius.circular(
            defaultSize * 1.8,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(defaultSize * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Text(
                      recipeBundle.title!,
                      style: TextStyle(
                        fontSize: defaultSize * 2.2,
                        color: Colors.white,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: defaultSize * 0.5,
                    ),
                    Text(
                      recipeBundles[0].description!,
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Spacer(),
                    buildInfoRow(
                      defaultSize,
                      iconSrc: "assets/icons/pot.svg",
                      text: "${recipeBundle.recipes} Recipes",
                    ),
                    SizedBox(
                      height: defaultSize * 0.05,
                    ),
                    buildInfoRow(
                      defaultSize,
                      iconSrc: "assets/icons/chef_nav.svg",
                      text: "${recipeBundle.chefs} Chefs",
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: defaultSize * 0.5,
            ),
            AspectRatio(
              aspectRatio: 0.71,
              child: Image.asset(
                recipeBundle.imageSrc!,
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildInfoRow(double defaultSize, {String? iconSrc, text}) {
    return Row(
      children: [
        SvgPicture.asset(iconSrc!),
        SizedBox(
          width: defaultSize,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
