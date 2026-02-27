import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:soundz_music_app/common/widgets/button/basic_app_button.dart';
import 'package:soundz_music_app/core/configs/assets/app_images.dart';
import 'package:soundz_music_app/core/configs/assets/app_vectors.dart';
import 'package:soundz_music_app/core/configs/themes/app_theme.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Background Image
          Image.asset(AppImages.chooseModeBackground, height: double.maxFinite, fit: BoxFit.cover, color: Colors.black54, colorBlendMode: BlendMode.darken,),
          //Onboarding Page Contents
          Center(
            child: Padding(
              padding: AppTheme.kPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppVectors.logo),
                  Spacer(),     
                  Spacer(),     
                  Flexible(child: Text("Choose Mode", style: AppTheme.smallTitleText, textAlign: TextAlign.center,)),
                  SizedBox(height: AppTheme.SpaceHeightMedium),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(50),
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                backgroundBlendMode: BlendMode.xor,
                                color: Colors.white60
                                ),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                  child: IconButton(
                                    onPressed: (){}, 
                                    icon: Icon(Ionicons.moon_outline, color: Colors.white,)
                                  ),
                                )
                              ),
                            ),
                            SizedBox(height: AppTheme.SpaceHeightSmall,),
                            Text("Dark Mode", style: AppTheme.bodyTextlight,)
                          ],
                        ),
                      ),
                      Flexible(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(50),
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                backgroundBlendMode: BlendMode.xor,
                                color: Colors.white60
                                ),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                  child: IconButton(
                                    onPressed: (){}, 
                                    icon: Icon(Ionicons.sunny_outline, color: Colors.white,)
                                  ),
                                )
                              ),
                            ),
                            SizedBox(height: AppTheme.SpaceHeightSmall,),
                            Text("Light Mode", style: AppTheme.bodyTextlight,)
                          ],
                        )
                      ),
                    ],
                  ),
                  Spacer(),
                  BasicAppButton(onPressed: (){}, title: "Continue")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}