import 'package:flutter/material.dart';
import 'package:soundz_music_app/common/widgets/button/basic_app_button.dart';
import 'package:soundz_music_app/core/configs/assets/app_images.dart';
import 'package:soundz_music_app/core/configs/assets/app_vectors.dart';
import 'package:soundz_music_app/core/configs/themes/app_theme.dart';
import 'package:soundz_music_app/presentation/mode/pages/choose_mode.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Background Image
          Image.asset(AppImages.onboardingBackground, height: double.maxFinite, fit: BoxFit.cover, color: Colors.black54, colorBlendMode: BlendMode.darken,),
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
                  Spacer(),
                  Spacer(),     
                  Flexible(child: Text("Enjoy Listening to Music", style: AppTheme.smallTitleText, textAlign: TextAlign.center,)),
                  SizedBox(height: AppTheme.SpaceHeightMedium),
                  Flexible(child: Text("Soundz is a music app that is designed to bring you the best of sounds from the best of artists around the world. Explore billions of music available in our catalog", style: AppTheme.bodyTextlight, textAlign: TextAlign.center,)),
                  SizedBox(height: AppTheme.SpaceHeightMedium,),
                  BasicAppButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ChooseModePage(),));
                  }, title: "Get Started")
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}