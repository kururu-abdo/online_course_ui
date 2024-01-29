import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learnig_ui/constants/colors.dart';
import 'package:online_learnig_ui/presentation/screens/home/home.dart';
import 'package:online_learnig_ui/presentation/screens/play/play.dart';
import 'package:online_learnig_ui/presentation/screens/profile/profile.dart';
import 'package:online_learnig_ui/presentation/screens/search/search.dart';
import 'package:online_learnig_ui/presentation/widgets/progress_card.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  int _selectedIndex=0; 


  _changeSelectedIndex(index){
_selectedIndex =index;
setState(() {
  
});
  }
  @override
  Widget build(BuildContext context) {
    var screens = [ 
      const HomeScreen() , 
       SearchScreen() , 
      const PlayScreen() ,  

      const ProfileScreen()
    ];
    return  Scaffold(
extendBody: true,

      backgroundColor:isDark(context)? COLOR_CONST.background_color_dark: COLOR_CONST.primaryColor,

body: 
screens[_selectedIndex]
,





      bottomNavigationBar: Container( 
height: 70.h,
width: MediaQuery.of(context).size.width, 
decoration:  BoxDecoration( 
  color:             isDark(context)?COLOR_CONST.base2_dark: Colors.white, 


  borderRadius: const BorderRadius.vertical(
    top: Radius.circular(30)
  ) , 

),

child: Row(  

mainAxisAlignment: MainAxisAlignment.spaceEvenly,
crossAxisAlignment: CrossAxisAlignment.center,
  children: [ 
IconButton(onPressed: (){
_changeSelectedIndex(0);
}, icon: ImageIcon(
  
 const AssetImage("assets/images/home_icon.png"),

size: _selectedIndex==0?30:24,
color: _selectedIndex==0?COLOR_CONST.secondaryColor:
   isDark(context)?Colors.white:
 Colors.black,

))

,
IconButton(onPressed: (){
_changeSelectedIndex(1);
}, icon:  Icon(Icons.search_outlined,
size: _selectedIndex==1?30:24,

color: _selectedIndex==1?COLOR_CONST.secondaryColor:
 isDark(context)?Colors.white:
 Colors.black,

))

,
IconButton(onPressed: (){
_changeSelectedIndex(2);
}, icon:  


ImageIcon(
  
 const AssetImage("assets/images/play.png"),



size: _selectedIndex==2?30:24,
color: _selectedIndex==2?COLOR_CONST.secondaryColor:
 isDark(context)?Colors.white:
 Colors.black,


))


,
IconButton(onPressed: (){
_changeSelectedIndex(3);
}, icon:  Icon(Icons.person_outline
,
size: _selectedIndex==3?30:24,
color: _selectedIndex==3?COLOR_CONST.secondaryColor:
 isDark(context)?Colors.white:
 Colors.black,


))

  ],
),


      ),
    );
  }
}