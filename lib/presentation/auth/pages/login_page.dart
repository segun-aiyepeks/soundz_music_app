import 'package:flutter/material.dart';
import 'package:soundz_music_app/common/widgets/button/basic_app_button.dart';
import 'package:soundz_music_app/common/widgets/textField/basic_textfield.dart';
import 'package:soundz_music_app/core/configs/assets/app_vectors.dart';
import 'package:soundz_music_app/core/configs/themes/app_theme.dart';
import 'package:soundz_music_app/presentation/auth/pages/signUp_page.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  final TextEditingController _fullName = TextEditingController();
  final TextEditingController _password = TextEditingController();

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
                  Text("Sign In", style: AppTheme.smallTitleText,),
                  SizedBox(height: AppTheme.SpaceHeightLarge,),
                  BasicTextField(label: "Enter Username or Email", controller: _fullName,),
                  SizedBox(height: AppTheme.SpaceHeightMedium,),
                  BasicTextField(label: "Enter Password", controller:  _password,),
                  SizedBox(height: AppTheme.SpaceHeightMedium,),
                  BasicAppButton(onPressed: (){}, title: "Sign In"),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Not a Member?", textAlign: TextAlign.center,),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage(),));
                      }, child: Text("Register Now", style: TextStyle(color: Colors.purple),),)
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