import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learnig_ui/constants/colors.dart';
import 'package:online_learnig_ui/data/models/comment_model.dart';

class CommentWidget extends HookWidget {
  final CommentModel? commentModel;
  const CommentWidget(this.commentModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return 
      Container(
        // height: 100.h,
        width: MediaQuery.of(context).size.width,  
        padding: const EdgeInsets.all(10), 
        child: 
        
        Row( 
          crossAxisAlignment: CrossAxisAlignment.start , 
mainAxisSize: MainAxisSize.min,
children: [ 
CircleAvatar(
  radius: 30, 
  backgroundImage: AssetImage(commentModel!.avatar!),


), 
SizedBox(width: 10.w,) , 
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [ 

Row(mainAxisSize: MainAxisSize.min,
children: [ 

  Text(
  commentModel!.userName! , 
  style: TextStyle(
    fontSize: 12,fontWeight: FontWeight.bold,
    color: isDark(context)?COLOR_CONST.secondaryColor: COLOR_CONST.primaryColor
  ),
), 
SizedBox(width: 10.w,),
Visibility(
  visible: commentModel!.isLecturer!,
  child: Container(
    // width: 28.w ,height: 15.h,

    padding: const EdgeInsets.all(5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: COLOR_CONST.secondaryColor
    ),

    child: const Center(child: Text("Author" , 
    style: TextStyle(
      color: Colors.white , fontSize: 10 , fontWeight: FontWeight.w400
    ),
    
    ),),
  ))

],

), 

SizedBox(
  width: 250.w,
  child: Text(commentModel!.comment!, 
  maxLines: 2, overflow: TextOverflow.ellipsis,
textAlign: TextAlign.start,
  style: const TextStyle(

    fontSize: 12 , fontWeight: FontWeight.w400
  ),
  
   ),
), 



Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Text("Vote (${commentModel!.thumbsCount})" , 
          
          style: TextStyle(
            fontSize: 10 , fontWeight: FontWeight.w400 , 
            color: isDark(context)? COLOR_CONST.base4 :COLOR_CONST.base3
          ),
          ),
          SizedBox(width: 15.w,), 
          IconButton(onPressed: (){}, icon: Icon(Icons.thumb_up_alt_outlined  ,     color: isDark(context)? COLOR_CONST.base4 :COLOR_CONST.base3    ))
  ],
)


],)


],


        )
        
        
      
      
      );
    
  }
}