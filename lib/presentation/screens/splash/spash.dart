import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:online_learnig_ui/config/router.dart';
import 'package:online_learnig_ui/presentation/screens/auth/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>  {

TyperAnimatedTextKit? _animatedTextWidget;

  @override
  void initState() {
  

    super.initState();

    Future.delayed(const Duration(milliseconds: (1000*5)+(200*5)+50),  (){


      Navigator.of(context).push(

        MaterialPageRoute(builder: (_)=>  const LoginScreen())
      );
    });
  }

  AnimatedTextKit animations2(){
   return  AnimatedTextKit(
  animatedTexts: [
    FadeAnimatedText(
       "Welcome to our app",

       duration: const Duration(milliseconds: 1000),
      textStyle: const TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
      ),
      
    ),

    FadeAnimatedText(
       "Learnig is very important", 
        duration: const Duration(milliseconds: 1000),
      textStyle: const TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
      ),
    ),



    FadeAnimatedText(
       "Learning is only way to progress", 
        duration: const Duration(milliseconds: 1000),
      textStyle: const TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
      ),
    ),

    FadeAnimatedText(
       "Don't stop learning",  duration: const Duration(milliseconds: 1000),
      textStyle: const TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
      ),
    ),
     FadeAnimatedText(
       "Thanks",  duration: const Duration(milliseconds: 1000),
      textStyle: const TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
      ),
    ),
  ],
  
  totalRepeatCount: 1,
  pause: const Duration(milliseconds: 200),
  
  displayFullTextOnTap: false,
  stopPauseOnTap: false,
);
  }




  @override
  Widget build(BuildContext context) {
  
    return Scaffold(


      appBar: AppBar(),
      body:  SizedBox.expand(
child: Center(



  child:animations2()
),

      )
    );
  }
}