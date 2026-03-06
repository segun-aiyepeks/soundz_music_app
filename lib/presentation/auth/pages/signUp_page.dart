import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soundz_music_app/common/widgets/button/basic_app_button.dart';
import 'package:soundz_music_app/common/widgets/textField/basic_textfield.dart';
import 'package:soundz_music_app/core/configs/assets/app_vectors.dart';
import 'package:soundz_music_app/core/configs/themes/app_colors.dart';
import 'package:soundz_music_app/core/configs/themes/app_theme.dart';
import 'package:soundz_music_app/data/models/auth/create_user_request.dart';
import 'package:soundz_music_app/domain/usecases/auth/signup_usecase.dart';
import 'package:soundz_music_app/presentation/auth/pages/login_page.dart';
import 'package:soundz_music_app/presentation/root/pages/root_page.dart';
import 'package:soundz_music_app/service_locator.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                      Text("Register", style: AppTheme.smallTitleText,),
                      SizedBox(height: AppTheme.SpaceHeightLarge,),
                      BasicTextField(label: "Enter Fullname", controller: _fullNameController,),
                      SizedBox(height: AppTheme.SpaceHeightMedium,),
                      BasicTextField(label: "Enter Email", controller: _emailController,),
                      SizedBox(height: AppTheme.SpaceHeightMedium,),
                      BasicTextField(label: "Enter Password", controller:  _passwordController,),
                      SizedBox(height: AppTheme.SpaceHeightMedium,),
                      BasicAppButton(onPressed: () async{
                          var result = await sl<SignupUsecase>().call(
                          params: CreateUserRequest( 
                            fullName: _fullNameController.text.toString(), 
                            email: _emailController.text.toString(), 
                            password: _passwordController.text.toString())
                        );
                        result.fold(
                          (l){
                            var snackbar = SnackBar(content: Text(l, style: GoogleFonts.poppins(color: Colors.white), textAlign: TextAlign.center,), backgroundColor: AppColors.primary,);
                            ScaffoldMessenger.of(context).showSnackBar(snackbar);
                          }, 
                          (r){
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => RootPage(),), (route) => false);
                          });
                      }, title: "Create Account"),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already registered?", textAlign: TextAlign.center,),
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
        ),
      ),
    );
  }
}