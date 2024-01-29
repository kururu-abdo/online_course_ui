import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learnig_ui/constants/colors.dart';
import 'package:online_learnig_ui/data/models/course_level.dart';
import 'package:online_learnig_ui/data/models/course_model.dart';
import 'package:online_learnig_ui/presentation/widgets/cart_widget.dart';
import 'package:online_learnig_ui/presentation/widgets/course_card.dart';

class PlayScreen extends HookWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
var tab = useState(0);


   var courses =
   
   useState( [ 


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






  ]);


   var done =
   
   useState( [ 


   


    CourseModel(
      courseName: 'Declarative interfaces for any Android Devices', 
      price: 250.0 , 
      color: COLOR_CONST.secondaryColor , 
      authror: 'Abdurrahim Kururu' , 
      level: CourseLevel.All, 
      rating: 4.5
    ), 






  ]);






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
     const Text('My Courses' , style: TextStyle(color: Colors.white),)
    
      ],
    )
    ,  
    const CartWidget()
  
    
    
      ],
    ),
  
  

  SizedBox(height: 15.h,)
  

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
    height: MediaQuery.of(context).size.height*.85, 
width: MediaQuery.of(context).size.width, 

decoration:  BoxDecoration(
 color: COLOR_CONST.getContainerColor(context),  
  borderRadius: const BorderRadius.vertical(
    top: Radius.circular(30)
  )
),

child:     Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisSize: MainAxisSize.min,
  children: [ 


     Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween , 
      
      children: [ 
      
        GestureDetector(
          onTap: (){
            tab.value=0;
          },
          child: Text("In Progress", 
                
                style: TextStyle(
          fontWeight: 
          
          tab.value==0?
          
          FontWeight.bold:FontWeight.w400, 
          color:   tab.value==0?
              isDark(context)?
          Colors.white:COLOR_CONST.base_dark
          :
            COLOR_CONST.base3
                ),
                
                
                ),
        ), 
      
      
      
     GestureDetector(
          onTap: (){
            tab.value=1;
          },
        child: Text("Done", 
        
        style: TextStyle(
         fontWeight:     tab.value==1?
          
          FontWeight.bold:FontWeight.w400, 
          fontSize: 10 ,
          
          
            color:   tab.value==1?
            isDark(context)?
        Colors.white:COLOR_CONST.base_dark
        
        :
         
          COLOR_CONST.base3
        ),
        ),
      )
      ]
      ,),
    ), 

Expanded(child:

Builder


(
  
  
  builder: (_ ){


  if (tab.value==0) {
    return ListView.builder(
  itemCount: courses.value.length,
  itemBuilder: (BuildContext context, int index) {
    return    CourseCard(
      cardType: CardType.Play,
      courseModel:  courses.value[index],
    );
  },
);
    
  }else  {

       return ListView.builder(
  itemCount: done.value.length,
  itemBuilder: (BuildContext context, int index) {
    return    CourseCard(
      cardType: CardType.Play,
      courseModel:  done.value[index],
    );
  },
);
  }
})

)


// const Spacer() , 
// SizedBox(height: 10.h,),
//  Container(width: double.infinity, height: 2, 
//   color: const Color(0xFFFFFFFF).withOpacity(.100)
//   ,)
//   , 
// SizedBox(height: 10.h,),

//     const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween , 
    
//     children: [ 

//       Text("Total Items", 

// style: TextStyle(
//   fontWeight: FontWeight.bold, 
//   fontSize: 12 , color: COLOR_CONST.base3
// ),


// ), 



// Text("\$1.100.000", 

// style: TextStyle(
//   fontWeight: FontWeight.bold, 
//   fontSize: 10 
// ),
// )
//     ]
//     ,), 


   ] 

)
  )
)



    ])

)
    );
  }
}