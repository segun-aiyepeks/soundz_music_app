import 'package:flutter/material.dart';
import 'package:soundz_music_app/core/configs/assets/app_vectors.dart';
import 'package:soundz_music_app/core/configs/themes/app_theme.dart';
import 'package:soundz_music_app/presentation/onboarding/pages/onboarding_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    redirect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: AppTheme.kPadding,
          child: Image.asset(AppVectors.logo),),
      ),
    );
  }
  Future<void> redirect() async{
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnboardingPage(),));
  }
}