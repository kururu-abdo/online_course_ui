import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learnig_ui/constants/colors.dart';
import 'package:online_learnig_ui/data/models/course_model.dart';
import 'package:online_learnig_ui/presentation/widgets/cart_widget.dart';
import 'package:online_learnig_ui/presentation/widgets/lecturer_card.dart';
import 'package:online_learnig_ui/presentation/widgets/main_button.dart';

class CourseDetailsScreen extends StatefulWidget {
  final CourseModel? courseModel;
  const CourseDetailsScreen({super.key, this.courseModel});

  @override
  State<CourseDetailsScreen> createState() => _CourseDetailsScreenState();
}

class _CourseDetailsScreenState extends State<CourseDetailsScreen> {
  
  List<String> tages = [ 

    "Swift" ,"IOS Devlopment", 
    "Objectice-C" , "Runner" , "Simulator"
  ];
  

  Widget _tag(String tag){
    return Container(
padding: const EdgeInsets.all(8),
margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(

        border: isDark(context)
        
        
        ?Border.all(color:Colors.red , width: 1): Border.all(),
        color: isDark(context)?Colors.transparent: const Color(0xFFE6E6FF), 
        borderRadius: BorderRadius.circular(50)
      ),
      child: Center(child: Text(tag , 
      
      style:  TextStyle(
        color:isDark(context)?Colors.red: COLOR_CONST.primaryColor, 

        fontWeight: FontWeight.w300
      ),
      ),),
    );
  }
  bool _showMore=false;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
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
     const Text('Course Details' , style: TextStyle(color: Colors.white),)
    
      ],
    )
    ,  
    
  const CartWidget()
    
    
      ],
    ),
  
  

  SizedBox(height: 40.h,)
  
  , 


  Row(
// mainAxisSize: MainAxisSize.min,
mainAxisAlignment: MainAxisAlignment.start,
    children: [ 
Transform.rotate(
  angle: 150,
  child: Container(  
  
    width: 50.h , height: 50.h, 
    decoration:  BoxDecoration(
      color: isDark(context)?
     COLOR_CONST.secondaryColor:  const Color(0xFFE6E6FF).withOpacity(.100)
    ),
  ),
), 
SizedBox(width: 30.w,)
,
Transform.rotate(
  angle: 150,
  child: Container(  
  
    width: 50.h , height: 50.h, 
    decoration:  BoxDecoration(
      color: isDark(context)?
     COLOR_CONST.secondaryColor: 
      
       const Color(0xFFE6E6FF).withOpacity(.100)
    ),
  ),
), 


    ],
  )
  , 
    SizedBox(height: 30.h,)
  ,


    SizedBox(width: 288.w, 
    
    child: Text( 

      widget.courseModel!.courseName! , 
maxLines: 2, overflow: TextOverflow.ellipsis,
textAlign: TextAlign.start,
      style: const TextStyle(
        color: Colors.white ,fontSize: 24 , fontWeight: FontWeight.bold
      ),
    ),
    )
  
  , 
      SizedBox(height: 10.h,), 
SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    // runSpacing: 5.h,spacing: 5.h, 
    // alignment: WrapAlignment.start,
    children: tages.map((e) =>
     Center(child: _tag(e))
    
    ).toList(),
  ),
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

   top: 15.h
),
    height:
    
     MediaQuery.of(context).size.height*.50,
     
     
width: MediaQuery.of(context).size.width, 

decoration:  BoxDecoration(
  color: COLOR_CONST.getContainerColor(context),  
  borderRadius: const BorderRadius.vertical(
    top: Radius.circular(30)
  )
),

child: 

  SingleChildScrollView(
   child:  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
   children: [ 
     Text("Description" , 
    
    style: TextStyle(
      fontWeight: FontWeight.w400 , 
      fontSize: 12, color:isDark(context)?Colors.white: COLOR_CONST.base3
    ),
    )
, 
SizedBox(height: 8.h,), 
AnimatedCrossFade(firstChild: 
Column( 

  crossAxisAlignment: CrossAxisAlignment.start , 

  children: [ 
 SizedBox(width: 317,  

child: Text(  

"Phasellus vestibulum lorem sed risus ultricies tristique nulla aliquet. Vel quam elementum pulvinar etiamnim lobortis scelerisque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur...." , 

maxLines: 8,

overflow: TextOverflow.ellipsis, 
style: TextStyle(
  fontSize: 14,  fontWeight: FontWeight.w400, 
   color:isDark(context)?Colors.white: const Color(0xFF161719)
),


),
)
, 
SizedBox(height: 10.h,), 

TextButton(onPressed: (){
  _showMore =!_showMore;
  setState(() {
    
  });
}, child: const Text("show more",  
style: TextStyle(
  fontSize: 12,  fontWeight: FontWeight.w400, 
  color: COLOR_CONST.primaryColor
),


))


  ],
)

,



 secondChild: 
 Column( 

  crossAxisAlignment: CrossAxisAlignment.start , 

  children: [ 
 SizedBox(width: 317,  

child: Text(  

"Phasellus vestibulum lorem sed risus ultricies tristique nulla aliquet. Vel quam elementum pulvinar etiamnim lobortis scelerisque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur Phasellus vestibulum lorem sed risus ultricies tristique nulla aliquet. Vel quam elementum pulvinar etiamnim lobortis scelerisque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur...." , 

// maxLines: 8,

// overflow: TextOverflow.ellipsis, 
style: TextStyle(
  fontSize: 14,  fontWeight: FontWeight.w400, 
  color:isDark(context)?Colors.white: const Color(0xFF161719)
),


),
)
, 
SizedBox(height: 10.h,), 

TextButton(onPressed: (){
  _showMore =false;
  setState(() {
    
  });
}, child: const Text("show less",  
style: TextStyle(
  fontSize: 12,  fontWeight: FontWeight.w400, 
  color: COLOR_CONST.primaryColor
),


))


  ],
)
 
 , crossFadeState: 
 
 _showMore? CrossFadeState.showSecond:CrossFadeState.showFirst
 , duration: const Duration(milliseconds:250 ))
,

SizedBox(height: 8.h,)
,
Container(
  height: 1, 
  width: double.infinity ,

  decoration: const BoxDecoration(
    color: COLOR_CONST.base3
  ),

), 

SizedBox(height: 8.h,),

  Text("Author" , 
    
    style: TextStyle(
      fontWeight: FontWeight.w400 , 
      fontSize: 12, color: isDark(context)?Colors.white:COLOR_CONST.base3
    ),
    )

,SizedBox(height: 8.h,),


const LecturerCard() , 
SizedBox(height: 8.h,),

Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [ 
Expanded(child: MainButton(
  title: 'See Details', 
  textColor: Colors.white , 
  buttonColor: COLOR_CONST.primaryColor,
  onTap: (){},

)), 
 SizedBox(width: 15.w,),
Expanded(child: MainButton(
  title: 'Add to Cart', 
  textColor: Colors.white , 
  buttonColor: COLOR_CONST.success,
  onTap: (){},

))


  ],
)
   ],
   
    ),
 )

)



)




    ]  

  )

)

    );
  }
}