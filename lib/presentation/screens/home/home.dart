import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learnig_ui/constants/colors.dart';
import 'package:online_learnig_ui/data/models/course_level.dart';
import 'package:online_learnig_ui/data/models/course_model.dart';
import 'package:online_learnig_ui/presentation/widgets/course_card.dart';
import 'package:online_learnig_ui/presentation/widgets/progress_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  List<CourseModel> courses = [ 


    CourseModel(
      courseName: 'Declarative interfaces for any Apple Devices', 
      price: 250.0 , 
      color: COLOR_CONST.secondaryColor , 
      authror: 'Sarah William' , 
      level: CourseLevel.All, 
      rating: 2.5
    ), 


    CourseModel(
      courseName: 'Declarative interfaces for any Apple Devices', 
      price: 250.0 , 
      color: COLOR_CONST.secondaryColor , 
      authror: 'Sarah William' , 
      level: CourseLevel.All, 
      rating: 3.5
    ), 



    CourseModel(
      courseName: 'Declarative interfaces for any Android Devices', 
      price: 250.0 , 
      color: COLOR_CONST.secondaryColor , 
      authror: 'Abdurrahim Kururu' , 
      level: CourseLevel.All, 
      rating: 4.5
    ), 






  ];
 
 
 
 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: isDark(context)? COLOR_CONST.background_color_dark
      .withOpacity(.100)
      
      : COLOR_CONST.primaryColor,
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
  alignment: Alignment.center,  
height: MediaQuery.of(context).size.height, 
width: MediaQuery.of(context).size.width, 
decoration:  const BoxDecoration(

),

child:  Row(
crossAxisAlignment: CrossAxisAlignment.start,
mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [ 
 Row( 
  crossAxisAlignment: CrossAxisAlignment.start,
mainAxisSize: MainAxisSize.min,
  children: [ 


     CircleAvatar(
   backgroundImage: const AssetImage(
        'assets/images/dev.png'
      ),
      radius: 25.r,
    
    ),

SizedBox(width: 15.w,),


const Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  
  children: [
Text('Abdurrahim Kururu' , style: TextStyle(color: Colors.white),),
Text('Mobile Developer' , style: TextStyle(color: Colors.white),)


   ],)

  ],
)
,  

IconButton(onPressed: (){

}, icon: const Icon(Icons.notifications_none_rounded , 

color: Colors.white,))


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

   top: 120.h
),
    height: MediaQuery.of(context).size.height*.75, 
width: MediaQuery.of(context).size.width, 

decoration:  BoxDecoration(
  color: COLOR_CONST.getContainerColor(context),  
  borderRadius: const BorderRadius.vertical(
    top: Radius.circular(30)
  )
),

child:  Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisSize: MainAxisSize.min,
  children: [ 
const Text("Recommendation", 

style: TextStyle(
  fontWeight: FontWeight.bold
),
)
, 

// SizedBox(height: 5.h,)
// , 

Expanded(
  flex: 2,
  child: ListView.builder(
    // physics: const FixedExtentScrollPhysics(),
  itemCount: courses.length,
  itemBuilder: (BuildContext context, int index) {
    return   CourseCard(courseModel: courses[index],);
  },
),)


],),
  )

)


,

Positioned(
  top: MediaQuery.of(context).size.height*.15,
  child: 
  
  const ProgessCard()
  
  
  ), 




  ]
  )),





    );
  }
}