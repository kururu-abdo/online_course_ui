import 'package:flutter/material.dart';
import 'package:online_learnig_ui/constants/colors.dart';
import 'package:online_learnig_ui/presentation/screens/dashboard/dashboard.dart';
import 'package:online_learnig_ui/presentation/widgets/main_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: COLOR_CONST.primaryColor,

body: SizedBox.expand( 


  child: Stack(children: [  
Container(

  padding:  EdgeInsets.only( 

    top: MediaQuery.of(context).size.height/5
  ),
  alignment: Alignment.topCenter,  
height: MediaQuery.of(context).size.height, 
width: MediaQuery.of(context).size.width, 
decoration: const BoxDecoration(

  image: DecorationImage(image: 
  AssetImage("assets/images/intro_background.png")  , 
  fit: BoxFit.cover , 
  opacity: .10
  )
),

child:  Column( 

  mainAxisSize: MainAxisSize.min,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [ 

    Image.asset("assets/images/online_learning_logo.png"), 
const SizedBox(height: 25,),
    Image.asset("assets/images/logo_text.png"), 

const SizedBox(height: 25,),

     const Text("Learn from anything and anywhere",  
    style: TextStyle( 

      color: COLOR_CONST.base
    ),
    
    )
  ],
),
)

,  

Positioned(

  bottom: 0, 

  child: Container(
padding:  EdgeInsets.symmetric( 

  horizontal: 20, vertical: 
   MediaQuery.of(context).viewPadding.bottom
),
    height: MediaQuery.of(context).size.height/2, 
width: MediaQuery.of(context).size.width, 

decoration:  BoxDecoration(
  color: COLOR_CONST.getContainerColor(context),  
  borderRadius: const BorderRadius.vertical(
    top: Radius.circular(30)
  )
),
child:  Column(children: [ 

TextFormField( 

decoration: InputDecoration( 
prefixIcon:  Icon(Icons.email_outlined ,color:isDark(context)?Colors.white:
 COLOR_CONST.primaryColor,),
hintStyle:  TextStyle(color:
isDark(context)?Colors.white:

 COLOR_CONST.base3), 

hintText: 'Email',

  filled: true , 
  fillColor:isDark(context)?COLOR_CONST.base2_dark: Colors.white , 
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10) , 
    borderSide: BorderSide.none
  ) , 
enabledBorder:  OutlineInputBorder(
    borderRadius: BorderRadius.circular(10) , 
    borderSide: BorderSide.none
  ) , 
  focusedBorder:  OutlineInputBorder(
    borderRadius: BorderRadius.circular(10) , 
    borderSide: BorderSide.none
  ) , 

),
),

const SizedBox(height: 20,),

TextFormField( 
  obscureText: true,
decoration: InputDecoration( 
prefixIcon:  Icon(Icons.lock_outline ,
color:
isDark(context)?Colors.white:

 COLOR_CONST.primaryColor,),
hintStyle:  TextStyle(color:isDark(context)?Colors.white: COLOR_CONST.base3), 

hintText: 'Password',
  filled: true , 
   fillColor:isDark(context)?COLOR_CONST.base2_dark: Colors.white , 
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10) , 
    borderSide: BorderSide.none
  ) , 
enabledBorder:  OutlineInputBorder(
    borderRadius: BorderRadius.circular(10) , 
    borderSide: BorderSide.none
  ) , 
  focusedBorder:  OutlineInputBorder(
    borderRadius: BorderRadius.circular(10) , 
    borderSide: BorderSide.none
  ) , 

),
),

const SizedBox(height: 20,),

MainButton(
  title: "Sign In",
  textColor: Colors.white,
  buttonColor: COLOR_CONST.primaryColor,
  onTap: (){
Navigator.of(context).push(
  
  MaterialPageRoute(builder: (_)=>  const Dashboard())
);
  },
), 

const SizedBox(height: 20,),

MainButton(
  title: "Sign In with Google",
  textColor: Colors.white,
  buttonColor: COLOR_CONST.secondaryColor,
  onTap: (){

  },
), 
const Spacer(),






const Center(child: 
Text("Feel free tro use this UI Kit \n © Harum Shidiqi",  

style: TextStyle( 
  color:COLOR_CONST.base3
),

))
,
  // const SizedBox(height: 20,)
],),
  ),
)

  ],)
),


    );
  }
}