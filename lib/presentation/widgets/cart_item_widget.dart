import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learnig_ui/constants/colors.dart';
import 'package:online_learnig_ui/data/models/course_model.dart';
import 'package:online_learnig_ui/presentation/widgets/course_card.dart';
enum CartItemType{
  Cart ,Saved
}
class CartItemWidget extends StatelessWidget {
  final CourseModel? courseModel;
  final CartItemType? cartItemType;
  const CartItemWidget({super.key, this.courseModel, this.cartItemType});

  @override
  Widget build(BuildContext context) {
    return Column(
crossAxisAlignment: CrossAxisAlignment.center,
children: [ 

  CourseCard(
    courseModel: courseModel, 
    cardType:cartItemType==CartItemType.Cart? CardType.Normal:CardType.Search ,
  ), 
  // SizedBox(height: 8.h,),
cartItemType==CartItemType.Cart?

Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, 

children: [ 


  TextButton(onPressed: (){

  }, child: const Text("Save for later", style: TextStyle(
    color: COLOR_CONST.base3, fontSize: 12 , fontWeight: FontWeight.bold
  ),)), 


  TextButton(onPressed: (){

  }, child: const Text("Remove", style: TextStyle(
    color: COLOR_CONST.base3, fontSize: 12 , fontWeight: FontWeight.bold
  ),)), 



],
): 


Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, 

children: [ 


  TextButton(onPressed: (){

  }, child: const Text("Add To Cart", style: TextStyle(
    color: COLOR_CONST.base3, fontSize: 12 , fontWeight: FontWeight.bold
  ),)), 


  TextButton(onPressed: (){

  }, child: const Text("Remove", style: TextStyle(
    color: COLOR_CONST.base3, fontSize: 12 , fontWeight: FontWeight.bold
  ),)), 



],
)

,
SizedBox(height: 8.h,),
],





    );
  }
}