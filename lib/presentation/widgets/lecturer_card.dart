import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learnig_ui/constants/colors.dart';
import 'package:online_learnig_ui/presentation/screens/profile/lecturer_profile.dart';

class LecturerCard extends StatelessWidget {
  const LecturerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_)=> const LecturerProfileScreen())
        );
      },
      child: Container(
      
        width: double.infinity, 
        height: 75.h,
        padding: const EdgeInsets.symmetric(
          horizontal: 15,vertical: 20
        ),
        decoration: BoxDecoration(
          color: COLOR_CONST.base3.withOpacity(.100) , 
          borderRadius: BorderRadius.circular(20)
        ),
        child:
        
         Row(
      
          mainAxisAlignment: MainAxisAlignment.start, 
          crossAxisAlignment: CrossAxisAlignment.start,
      
          children: [ 
      
      const CircleAvatar(radius: 30,  
       backgroundImage: AssetImage(
        'assets/images/dev.png'
      ),
      ), 
      SizedBox(width: 15.w,),
       Column( 
      crossAxisAlignment: CrossAxisAlignment.start, 
      
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [ 
      const Text("Kururu " ,  style: TextStyle(
        fontSize: 14, fontWeight: FontWeight.w400 , 
        
      ),)
      , 
      Row(
        children: [ 
       const Text(
          
          "14 Courses" ,  
          maxLines: 1, 
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.w400 ,fontSize: 10 , 
        color: COLOR_CONST.base3
          ),
          ),
          SizedBox(width: 8.w,),
       Container(
          height: 5.h,width: 5.h,
          decoration: const BoxDecoration(
        shape: BoxShape.circle , 
        color: COLOR_CONST.base3
          ),
        ),
       SizedBox(width: 8.w,),
        const Text(
          
          "14000 Students" ,  
          maxLines: 1, 
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.w400 ,fontSize: 10 , 
        color: COLOR_CONST.base3
          ),
          ),
        ],
      )
      
      ],
      
      )
          ],
        ),
      ),
    );
  }
}