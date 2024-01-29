import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learnig_ui/constants/colors.dart';
import 'package:online_learnig_ui/data/models/course_level.dart';
import 'package:online_learnig_ui/data/models/course_model.dart';
import 'package:online_learnig_ui/presentation/widgets/cart_widget.dart';
import 'package:online_learnig_ui/presentation/widgets/course_card.dart';

class LecturerProfileScreen extends StatefulWidget {
  const LecturerProfileScreen({super.key});

  @override
  State<LecturerProfileScreen> createState() => _LecturerProfileScreenState();
}

class _LecturerProfileScreenState extends State<LecturerProfileScreen> {

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
    return     Scaffold(
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
     const Text('Author' , style: TextStyle(color: Colors.white),)
    
      ],
    )
    ,  
    
   CartWidget()
    
    
      ],
    ),
  
  

  SizedBox(height: 15.h,)
  
  , 

   Row(
      
          mainAxisAlignment: MainAxisAlignment.start, 
          crossAxisAlignment: CrossAxisAlignment.center,
      
          children: [ 
      
      const CircleAvatar(radius: 25,  
       backgroundImage: const AssetImage(
        'assets/images/dev.png'
      ),
      ), 
      SizedBox(width: 15.w,),
       const Column( 
      crossAxisAlignment: CrossAxisAlignment.start, 
      
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [ 
      Text("Kururu " ,  style: TextStyle(
        fontSize: 14, fontWeight: FontWeight.w400 , 
        color: COLOR_CONST.base
      ),)
      , 
 Text("Developer & Instructor " ,  style: TextStyle(
        fontSize: 14, fontWeight: FontWeight.w400 , 
        color: COLOR_CONST.base
      ),)
      , 
      
      ],
      
      )
          ],
        ),
 
  SizedBox(height: 15.h,),
  Container(width: double.infinity, height: 2, 
  color: const Color(0xFFFFFFFF).withOpacity(.100)
  ,)
  , 
SizedBox(height: 15.h,),
  Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [ 

Row(
  mainAxisSize: MainAxisSize.min,
  children: [
Container(
  height: 35.h ,width: 35.h,

  decoration: BoxDecoration(
    color: COLOR_CONST.base4.withOpacity(.30) , 
    borderRadius: BorderRadius.circular(10)
  ),
  child: Center(
    child: 
    Image.asset("assets/images/award.png",  color: COLOR_CONST.base4,)
    
    // Icon(Icons.emoji_events),
  ),
)
, 
SizedBox(width: 8.w,), 

const Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [ 

Text("Total students" , style: TextStyle(
  color: COLOR_CONST.base , fontWeight: FontWeight.w400, 
  fontSize: 10
),), 
Text("2,405" , style: TextStyle(
  color: COLOR_CONST.base , fontWeight: FontWeight.w400, 
  fontSize: 14
),), 




],)


  ],
)

,
  SizedBox(width: 50.w,), 
Row(
  mainAxisSize: MainAxisSize.min,
  children: [
Container(
  height: 35.h ,width: 35.h,

  decoration: BoxDecoration(
    color: COLOR_CONST.base4.withOpacity(.30) , 
    borderRadius: BorderRadius.circular(10)
  ),
  child: Center(
    child: 
    Image.asset("assets/images/award.png",  color: COLOR_CONST.base4,)
    
    // Icon(Icons.emoji_events),
  ),
)
, 
SizedBox(width: 8.w,), 

const Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [ 

Text("Reviews" , style: TextStyle(
  color: COLOR_CONST.base , fontWeight: FontWeight.w400, 
  fontSize: 10
),), 
Text("2,100" , style: TextStyle(
  color: COLOR_CONST.base , fontWeight: FontWeight.w400, 
  fontSize: 14
),), 




],)


  ],
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
    height: MediaQuery.of(context).size.height*.65, 
width: MediaQuery.of(context).size.width, 

decoration: const BoxDecoration(
  color: COLOR_CONST.base2,  
  borderRadius: BorderRadius.vertical(
    top: Radius.circular(30)
  )
),

child:    Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisSize: MainAxisSize.min,
  children: [ 


    const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween , 
    
    children: [ 

      Text("Recommendation", 

style: TextStyle(
  fontWeight: FontWeight.bold
),


), 



Text("Total 4", 

style: TextStyle(
  fontWeight: FontWeight.w400, 
  fontSize: 10 ,color: COLOR_CONST.base3
),
)
    ]
    ,), 

Expanded(child: ListView.builder(
  itemCount: courses.length,
  itemBuilder: (BuildContext context, int index) {
    return    CourseCard(
      cardType: CardType.Search,
      courseModel: courses[index],
    );
  },
),)



   ] 

)
  )
)



    ])

)
    );
  }


}