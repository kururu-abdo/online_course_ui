import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learnig_ui/constants/colors.dart';
import 'package:online_learnig_ui/data/models/course_level.dart';
import 'package:online_learnig_ui/data/models/course_model.dart';
import 'package:online_learnig_ui/presentation/widgets/cart_item_widget.dart';
import 'package:online_learnig_ui/presentation/widgets/cart_widget.dart';
import 'package:online_learnig_ui/presentation/widgets/course_card.dart';
import 'package:online_learnig_ui/presentation/widgets/main_button.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

   List<CourseModel> courses = [ 


  

    CourseModel(
      courseName: 'Declarative interfaces for any Apple Devices', 
      price: 250.0 , 
      color: COLOR_CONST.primaryColor , 
      authror: 'Sarah William' , 
      level: CourseLevel.All, 
      rating: 3.5
    ), 


CourseModel(
      courseName: 'Declarative interfaces for any Apple Devices', 
      price: 250.0 , 
      color: COLOR_CONST.secondaryColor , 
      authror: 'Sarah William' , 
      level: CourseLevel.All, 
      rating: 2.5
    ), 


  ];
  
  
  
   List<CourseModel> savedCourses = [ 


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
      rating: 2.5
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
     const Text('Cart' , style: TextStyle(color: Colors.white),)
    
      ],
    )
    ,  
    // const CartWidget()
  
    
    
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

child:      Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisSize: MainAxisSize.min,
  children: [ 
 Flexible(
  flex: 1,
   child: SingleChildScrollView(
   child: Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [ 
   
      ListView.builder(
          padding: EdgeInsets.zero,
    primary: false,
        shrinkWrap: true,
        itemCount: courses.length,
        itemBuilder: (BuildContext context, int index) {
          return   CartItemWidget(
            courseModel: courses[index], 
            cartItemType: CartItemType.Cart,
          );
        },
      ) , 
 SizedBox(height: 15.h,)  , 
    const Text("Saved for later" , 
    style: TextStyle(
      fontSize: 14, fontWeight: FontWeight.bold
    ),
    
    
    ), 
    SizedBox(height: 10.h,)  , 
    ListView.builder(
        padding: EdgeInsets.zero,
    primary: false,
      shrinkWrap: true,
     itemCount: savedCourses.length,
     itemBuilder: (BuildContext context, int index) {
       return   CartItemWidget(
         courseModel: savedCourses[index], 
         cartItemType: CartItemType.Saved,
       );
     },
      ) , 
    
   
    ],
   ),
   ),
 ),


// const Spacer() , 
SizedBox(height: 10.h,),
 Container(width: double.infinity, height: 2, 
  color: COLOR_CONST.base3.withOpacity(.100)
  ,)
  , 
SizedBox(height: 10.h,),

     const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween , 
    
    children: [ 

      Text("Total Items", 

style: TextStyle(
  fontWeight: FontWeight.bold, 
  fontSize: 12 , color: COLOR_CONST.base3
),


), 



Text("\$1.100.000", 

style: TextStyle(
  fontWeight: FontWeight.bold, 
  fontSize: 10 
),
)
    ]
    ,), 
SizedBox(height: 20.h, ) , 

MainButton(
  title: 'Checkout Now',
  textColor: Colors.white,
  buttonColor: Colors.green,
  onTap: (){

  },
)
,
SizedBox(height: 10.h, ) , 
   ] 

)
  )
)



    ])

)
    );
  }
}