import 'package:flutter/material.dart';
import 'package:soundz_music_app/common/widgets/button/basic_app_button.dart';
import 'package:soundz_music_app/common/widgets/button/basic_text_button.dart';
import 'package:soundz_music_app/core/configs/assets/app_images.dart';
import 'package:soundz_music_app/core/configs/assets/app_vectors.dart';
import 'package:soundz_music_app/core/configs/themes/app_theme.dart';
import 'package:soundz_music_app/presentation/mode/pages/choose_mode.dart';

class SignupLoginPage extends StatelessWidget {
  const SignupLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: AlignmentGeometry.topRight,
            child: Image.asset(AppVectors.wavyBg1, color: Colors.black.withOpacity(0.2), colorBlendMode: BlendMode.dstIn,),
          ),
          Align(
            alignment: AlignmentGeometry.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 48.0, left: 8),
              child: BackButton(),
            ),
          ),
          Align(
            alignment: AlignmentGeometry.bottomRight,
          child: Image.asset(AppVectors.wavyBg2, color: Colors.black.withOpacity(0.2), colorBlendMode: BlendMode.dstIn,),
          ),
          Align(
            alignment: AlignmentGeometry.centerLeft,
            child: Image.asset(AppImages.saxBackground, color: Colors.black.withOpacity(0.3), colorBlendMode: BlendMode.dstIn,),
          ),
          Padding(
            padding: AppTheme.kPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppVectors.logo),
                SizedBox(height: AppTheme.SpaceHeightMedium,),
                Text("Enjoy Listening to Music", style: AppTheme.smallTitleText, textAlign: TextAlign.center,),
                SizedBox(height: AppTheme.SpaceHeightMedium,),
                Text("Soundz is a propeitry Nigerian audio streaming and media service provider. Created by Emma Aiyepeks", style: AppTheme.bodyTextlight, textAlign: TextAlign.center,),
                SizedBox(height: AppTheme.SpaceHeightMedium,),
                Row(
                  children: [
                    Expanded(child: BasicAppButton(onPressed: (){}, title: "Register")),
                    Expanded(child: BasicTextButton(onPressed: (){}, title: "Sign In")),
                  ],
                ),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}