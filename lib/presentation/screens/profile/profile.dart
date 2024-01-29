import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learnig_ui/constants/colors.dart';
import 'package:online_learnig_ui/presentation/common_providers/theme_provider.dart';
import 'package:online_learnig_ui/presentation/widgets/setting_tile.dart';
import 'package:online_learnig_ui/presentation/widgets/theme_widget.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
          final themeProvider = Provider.of<ThemeProvider>(context);
    return 
     Scaffold(
      backgroundColor: isDark(context)? COLOR_CONST.background_color_dark: COLOR_CONST.primaryColor,
body: 
 SizedBox.expand( 
 child: Stack(
    alignment: Alignment.center,
    children: [  


Container(

  padding:   EdgeInsets.only( 

    top: 50.h , 

    left: 20.w , 
    right: 20.w
  ),
  alignment: Alignment.topCenter,  
height: MediaQuery.of(context).size.height, 
width: MediaQuery.of(context).size.width, 
decoration:  const BoxDecoration(

),

child:  Column(
  children: [
    Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [ 
     Row( 
      crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
      children: [ 
    
    
     IconButton(onPressed: (){
     Navigator.pop(context);
     }, icon: const Icon(Icons.arrow_back_ios , size: 20,color: Colors.white ,))
     ,
     const Text('Account' , style: TextStyle(color: Colors.white),)
    
      ],
    )
    ,  
    // const CartWidget()
  
    
    
      ],
    ),
  
  

  SizedBox(height: 15.h,),
  const Center(child: CircleAvatar(
    
    radius: 55,
    
     backgroundImage: AssetImage(
        'assets/images/dev.png'
      ),),)
,
 SizedBox(height: 6.h,),
 Column(
  mainAxisSize: MainAxisSize.min,
  crossAxisAlignment: CrossAxisAlignment.center,
children: [
  const Text("Kururu",  
  style: TextStyle(
    color: Colors.white , fontSize: 24 , fontWeight: FontWeight.bold
  ),
  ) , 
   SizedBox(height: 5.h,),
  const Text("Mobile Developer", 
  
  style: TextStyle(
    color: Colors.white , fontSize: 14 , fontWeight: FontWeight.w400
  ),
  )
],
)

  ],
),
),  


Positioned(

  bottom: 0, 

  child: Container(
padding:  EdgeInsets.only( 
right: 20,
  left: 20, bottom: 
   MediaQuery.of(context).viewPadding.bottom, 

   top: 20.h
),
    height: MediaQuery.of(context).size.height*.60, 
width: MediaQuery.of(context).size.width, 

decoration:   BoxDecoration(
 color: COLOR_CONST.getContainerColor(context),  
  borderRadius: const BorderRadius.vertical(
    top: Radius.circular(30)
  )
),
child:  SingleChildScrollView(
  scrollDirection: Axis.vertical,
  physics: const BouncingScrollPhysics(),
  child: Column(
  
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [ 

const Text("Account Settings" , style: TextStyle(
  color: COLOR_CONST.base3 , 
  fontSize: 10 , 
  fontWeight: FontWeight.w400
),),
SizedBox(height: 8.h,), 
SettingTile(
title: 'Account Security' ,onTap: (){

},
), 
SettingTile(
title: 'Email notification preferences' ,onTap: (){

},
), 

SettingTile(
title: 'Learning reminders' ,onTap: (){

},
)

,
const Text("Apperance" , style: TextStyle(
  color: COLOR_CONST.base3 , 
  fontSize: 10 , 
  fontWeight: FontWeight.w400
),),
SizedBox(height: 8.h,), 
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,children: [

ThemeWidget(
  isDark: false, 
  isSelected: !themeProvider.isDark, 
  title: 'Light Model',
  onSelect: (value){
    themeProvider.setThemeData(ThemeData.light());

  },
), 

ThemeWidget(
  isDark: true, 
  isSelected: themeProvider.isDark, 
    title: 'Dark Model',
  onSelect: (bool){
    log(bool.toString());
themeProvider.setThemeData(ThemeData.dark());
  },
), 


],),
SizedBox(height: 15.h,)
,
const Text("Support" , style: TextStyle(
  color: COLOR_CONST.base3 , 
  fontSize: 10 , 
  fontWeight: FontWeight.w400
),)
, 

SizedBox(height: 8.h,), 
SettingTile(
title: 'About KururuDev' ,onTap: (){

},
), 
SettingTile(
title: 'Frequently asked questions' ,onTap: (){

},
), 


SettingTile(
title: 'Share KururuDev app' ,onTap: (){

},
), 
],),),

  )
)



    ])
)

     );
  }
}