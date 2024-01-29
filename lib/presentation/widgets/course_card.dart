import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learnig_ui/constants/colors.dart';
import 'package:online_learnig_ui/data/models/course_model.dart';
import 'package:online_learnig_ui/presentation/screens/details/course_details.dart';
import 'package:online_learnig_ui/presentation/screens/play/course_play.dart';
enum CardType{
  Normal , Search, Play
}
class CourseCard extends HookWidget {
  final CourseModel? courseModel;
  final CardType? cardType;
  const CourseCard({super.key, this.courseModel , 
  
  this.cardType=CardType.Normal
  });

  @override
  Widget build(BuildContext context) {
    var controller =useAnimationController(duration: const Duration(milliseconds: 500));
var fade = Tween<double>(begin: 1,end:0,).animate(controller);
useAnimation(Tween<double>(begin: 1,end:0,).animate(controller));

    return FadeTransition(
      opacity: fade,
      child: 
      
      
      Builder(
        builder: (context) {


          if (cardType==CardType.Search) {
            
          return GestureDetector(
            onTap: (){
              Navigator.of(context).push(
                
                MaterialPageRoute(builder: (_)=>
                 CourseDetailsScreen(courseModel: courseModel,))
              );
            },
            child:
            
            
             Container(
              height: 105.h,
              margin: EdgeInsets.only(
                bottom: 15.h
              ),
              padding: EdgeInsets.all(
                15.h
              ),
              decoration: BoxDecoration( 
            
                color:isDark(context)?COLOR_CONST.base2_dark: Colors.white, 
            
                borderRadius: BorderRadius.circular(10)
              ),
            
              child: Row(
            
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
            
            
            Container( 
            width: 75.h , height: 75.h ,
            decoration:BoxDecoration(
              color: courseModel!.color, 
            
              borderRadius: BorderRadius.circular(15)
            ), 
            
            child: Center(
              child: Container(
            height: 24.h,width: 24.h, 
            
            decoration: BoxDecoration(
            
              shape: BoxShape.circle , 
              color: const Color(0xFFFFFFFF).withOpacity(.17)
            ),
              ),
            ),
            )
            ,
              Column( 
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ 
            
            
              SizedBox(width: 200.w,  
              child: Text(courseModel!.courseName! ,  
              maxLines: 2, 
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.w400 ,fontSize: 12 , 
            
              ),
              ),
              
              
              ), 
              Text("\$${courseModel!.price!}" ,  
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.bold ,fontSize: 12 , 
            
              ),
              ), 
            
            Row(
              mainAxisSize: MainAxisSize.min, 
            
              children: [ 
            const Icon(Icons.star,size: 15 ,color:COLOR_CONST.warning,) , 
            SizedBox(width: 5.w,),  
            Text(courseModel!.rating!.toString() ,  
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.bold ,fontSize: 10 , 
            
              ),),
            
            SizedBox(width: 5.w,),  
            
            Container(
              height: 5.h,width: 5.h,
              decoration: const BoxDecoration(
            shape: BoxShape.circle , 
            color: COLOR_CONST.base3
              ),
            )
            
            , 
            SizedBox(width: 5.w,),  
            
            SizedBox(
              width: 77.w,
              child: Text(
            
            "By ${courseModel!.authror!}" ,  
                maxLines: 1, 
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.w400 ,fontSize: 10 , 
              
                ),
                ),
            ),
            SizedBox(width: 5.w,),  
            
            Container(
              height: 5.h,width: 5.h,
              decoration: const BoxDecoration(
            shape: BoxShape.circle , 
            color: COLOR_CONST.base3
              ),
            ),
            SizedBox(width: 5.w,),  
            
            
            const Text(
              
              "All Level" ,  
              maxLines: 1, 
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.w400 ,fontSize: 10 , 
            
              ),
              ),
            
            
            
              ],
            )
            
            
            
            ],
              )
            ,  
            
            ],
            
                
              ),
            ),
          );
       
       
          }
          
        else  if (cardType==CardType.Play) {
            
          return GestureDetector(
            onTap: (){

              //video screen
              Navigator.of(context).push(
                
                MaterialPageRoute(builder: (_)=>
                 CoursePlayScreen(courseModel: courseModel,))
              );
            },
            child:
            
            
             Container(
              height: 90.h,
              margin: EdgeInsets.only(
                bottom: 15.h
              ),
              padding: EdgeInsets.all(
                15.h
              ),
              decoration: BoxDecoration( 
            
                color: isDark(context)?COLOR_CONST.base2_dark: Colors.white, 
            
                borderRadius: BorderRadius.circular(10)
              ),
            
              child: Row(
            
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
            
            
            Container( 
            width: 75.h , height: 75.h ,
            decoration:BoxDecoration(
              color: courseModel!.color, 
            
              borderRadius: BorderRadius.circular(15)
            ), 
            
            child: Center(
              child: Container(
            height: 24.h,width: 24.h, 
            
            decoration: BoxDecoration(
            
              shape: BoxShape.circle , 
              color: const Color(0xFFFFFFFF).withOpacity(.17)
            ),
              ),
            ),
            )
            ,
              Column( 
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ 
            
            
              SizedBox(width: 200.w,  
              child: Text(courseModel!.courseName! ,  
              maxLines: 2, 
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.w400 ,fontSize: 12 , 
            
              ),
              ),
              
              
              ), 
              // Text("\$${courseModel!.price!}" ,  
              // overflow: TextOverflow.ellipsis,
              // style: const TextStyle(
              //   fontWeight: FontWeight.bold ,fontSize: 12 , 
            
              // ),
              // ), 
            
            Row(
              mainAxisSize: MainAxisSize.min, 
            
              children: [ 
            const Icon(Icons.star,size: 15 ,color:COLOR_CONST.warning,) , 
            SizedBox(width: 5.w,),  
            Text(courseModel!.rating!.toString() ,  
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.bold ,fontSize: 10 , 
            
              ),),
            
            SizedBox(width: 5.w,),  
            
            Container(
              height: 5.h,width: 5.h,
              decoration: const BoxDecoration(
            shape: BoxShape.circle , 
            color: COLOR_CONST.base3
              ),
            )
            
            , 
            SizedBox(width: 5.w,),  
            
            SizedBox(
              width: 77.w,
              child: Text(
            
            "By ${courseModel!.authror!}" ,  
                maxLines: 1, 
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.w400 ,fontSize: 10 , 
              
                ),
                ),
            ),
            SizedBox(width: 5.w,),  
            
            Container(
              height: 5.h,width: 5.h,
              decoration: const BoxDecoration(
            shape: BoxShape.circle , 
            color: COLOR_CONST.base3
              ),
            ),
            SizedBox(width: 5.w,),  
            
            
            const Text(
              
              "All Level" ,  
              maxLines: 1, 
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.w400 ,fontSize: 10 , 
            
              ),
              ),
            
            
            
              ],
            )
            
            
            
            ],
              )
            ,  
            
            ],
            
                
              ),
            ),
          );
       
       
          }
          
          
          
          else {


          return GestureDetector(
            onTap: (){
              Navigator.of(context).push(
                
                MaterialPageRoute(builder: (_)=>
                 CourseDetailsScreen(courseModel: courseModel,))
              );
            },
            child:
            
            
             Container(
              height: 105.h,
              margin: EdgeInsets.only(
                bottom: 15.h
              ),
              padding: EdgeInsets.all(
                15.h
              ),
              decoration: BoxDecoration( 
            
                           color: isDark(context)?COLOR_CONST.base2_dark: Colors.white, 

            
                borderRadius: BorderRadius.circular(10)
              ),
            
              child: Row(
            
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
            
              Column( 
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ 
            
            
              SizedBox(width: 200.w,  
              child: Text(courseModel!.courseName! ,  
              maxLines: 2, 
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.w400 ,fontSize: 12 , 
            
              ),
              ),
              
              
              ), 
              Text("\$${courseModel!.price!}" ,  
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.bold ,fontSize: 12 , 
            
              ),
              ), 
            
            Row(
              mainAxisSize: MainAxisSize.min, 
            
              children: [ 
            const Icon(Icons.star,size: 15 ,color:COLOR_CONST.warning,) , 
            SizedBox(width: 5.w,),  
            Text(courseModel!.rating!.toString() ,  
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.bold ,fontSize: 10 , 
            
              ),),
            
            SizedBox(width: 5.w,),  
            
            Container(
              height: 5.h,width: 5.h,
              decoration: const BoxDecoration(
            shape: BoxShape.circle , 
            color: COLOR_CONST.base3
              ),
            )
            
            , 
            SizedBox(width: 5.w,),  
            
            SizedBox(
              width: 77.w,
              child: Text(
            
            "By ${courseModel!.authror!}" ,  
                maxLines: 1, 
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.w400 ,fontSize: 10 , 
              
                ),
                ),
            ),
            SizedBox(width: 5.w,),  
            
            Container(
              height: 5.h,width: 5.h,
              decoration: const BoxDecoration(
            shape: BoxShape.circle , 
            color: COLOR_CONST.base3
              ),
            ),
            SizedBox(width: 5.w,),  
            
            
            const Text(
              
              "All Level" ,  
              maxLines: 1, 
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.w400 ,fontSize: 10 , 
            
              ),
              ),
            
            
            
              ],
            )
            
            
            
            ],
              )
            ,  
            
            
            Container( 
            width: 75.h , height: 75.h ,
            decoration:BoxDecoration(
              color: courseModel!.color, 
            
              borderRadius: BorderRadius.circular(15)
            ), 
            
            child: Center(
              child: Container(
            height: 24.h,width: 24.h, 
            
            decoration: BoxDecoration(
            
              shape: BoxShape.circle , 
              color: const Color(0xFFFFFFFF).withOpacity(.17)
            ),
              ),
            ),
            )
            
            ],
            
                
              ),
            ),
          );
       
       
          }

          
       
        }
      ),
    );
  }
}