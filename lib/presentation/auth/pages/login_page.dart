import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soundz_music_app/common/widgets/button/basic_app_button.dart';
import 'package:soundz_music_app/common/widgets/textField/basic_textfield.dart';
import 'package:soundz_music_app/core/configs/assets/app_vectors.dart';
import 'package:soundz_music_app/core/configs/themes/app_colors.dart';
import 'package:soundz_music_app/core/configs/themes/app_theme.dart';
import 'package:soundz_music_app/data/models/auth/signin_user_request.dart';
import 'package:soundz_music_app/domain/usecases/auth/signin.dart';
import 'package:soundz_music_app/presentation/auth/pages/signUp_page.dart';
import 'package:soundz_music_app/presentation/root/pages/root_page.dart';
import 'package:soundz_music_app/service_locator.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
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
                      BasicTextField(label: "Enter Username or Email", controller: _email,),
                      SizedBox(height: AppTheme.SpaceHeightMedium,),
                      BasicTextField(label: "Enter Password", controller:  _password,),
                      SizedBox(height: AppTheme.SpaceHeightMedium,),
                      BasicAppButton(onPressed: () async{
                          var result = await sl<SigninUsecase>().call(
                          params: SignInUserRequest( 
                            email: _email.text.toString(), 
                            password: _password.text.toString())
                        );
                        result.fold(
                          (l){
                            var snackbar = SnackBar(content: Text(l, style: GoogleFonts.poppins(color: Colors.white), textAlign: TextAlign.center,), backgroundColor: AppColors.primary,);
                            ScaffoldMessenger.of(context).showSnackBar(snackbar);
                          }, 
                          (r){
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => RootPage(),), (route) => false);
                          });
                      }, title: "Sign In"),
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
        ),
      ),
    );
  }
}