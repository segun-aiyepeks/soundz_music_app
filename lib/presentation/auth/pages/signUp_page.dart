import 'package:flutter/material.dart';
import 'package:soundz_music_app/common/widgets/button/basic_app_button.dart';
import 'package:soundz_music_app/common/widgets/textField/basic_textfield.dart';
import 'package:soundz_music_app/core/configs/assets/app_vectors.dart';
import 'package:soundz_music_app/core/configs/themes/app_theme.dart';
import 'package:soundz_music_app/presentation/auth/pages/login_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Padding(
              padding: AppTheme.kPadding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppVectors.logo),
                  SizedBox(height: AppTheme.SpaceHeightMedium,),
                  Text("Register", style: AppTheme.smallTitleText,),
                  SizedBox(height: AppTheme.SpaceHeightLarge,),
                  BasicTextField(label: "Enter Fullname",),
                  SizedBox(height: AppTheme.SpaceHeightMedium,),
                  BasicTextField(label: "Enter Email",),
                  SizedBox(height: AppTheme.SpaceHeightMedium,),
                  BasicTextField(label: "Enter Password",),
                  SizedBox(height: AppTheme.SpaceHeightMedium,),
                  BasicAppButton(onPressed: (){}, title: "Create Account"),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Do you have an account?", textAlign: TextAlign.center,),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                      }, child: Text("Sign In", style: TextStyle(color: Colors.purple),),)
                    ],
                  )
                ],
              ),
            ),
            Align(
              alignment: AlignmentGeometry.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 48, left: 8),
                child: BackButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}