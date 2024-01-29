import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learnig_ui/constants/colors.dart';

class ThemeWidget extends StatelessWidget {
  final bool? isDark;
  final bool? isSelected;
  final Function(bool)? onSelect;
  final String? title;
  const ThemeWidget({super.key, this.isDark, this.isSelected, this.onSelect, this.title});

  @override
  Widget build(BuildContext context) {
    return 
    
    GestureDetector(
      onTap: (){
        onSelect!(true);
      },
      child: Stack(
        alignment: Alignment.center,
      
      children: [ 
      
      
      
      
      Visibility(
        visible: isSelected!,
        child: Container(
        height: MediaQuery.of(context).size.width*.40.w,
         width: MediaQuery.of(context).size.width*.40,
        decoration: BoxDecoration(
      
      border: Border.all(color: Colors.blue)
        ),
      ))
      , 
      
      Container(
        height: MediaQuery.of(context).size.width*.40,
         width: MediaQuery.of(context).size.width*.40,
         padding: const EdgeInsets.all(10),
      child: Container(
      padding: const EdgeInsets.all(10),
      decoration:  BoxDecoration(
      
        color:  isDark!? COLOR_CONST.base2_dark :COLOR_CONST.base2, 
      
      ),
      child: Center(
        
        
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [ 
      Container(
        padding: const EdgeInsets.all(10),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
 color:  isDark!? COLOR_CONST.base2.withOpacity(.20) :
 Colors.white70, 

        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
        
        
          Container(height: 10  , width: 50.w,
        
        
        decoration: BoxDecoration(
          color: isDark!? COLOR_CONST.base2:COLOR_CONST.base2_dark.withOpacity(.5),
          borderRadius: BorderRadius.circular(3)
        ),
        ), 
        SizedBox(height: 10.h,), 
        
        Container(height: 8.h  , width: 80.w,
        
        decoration: BoxDecoration(
          color: isDark!? COLOR_CONST.base2:COLOR_CONST.base2_dark.withOpacity(.30),
          borderRadius: BorderRadius.circular(3)
        ),
        
        ), 
        SizedBox(height: 8.h,), 
        
        Container(height: 6.h  , width: 40.w,
        
        decoration: BoxDecoration(
          color: isDark!? COLOR_CONST.base2:COLOR_CONST.base2_dark.withOpacity(.30),
          borderRadius: BorderRadius.circular(3)
        ),
        
        ), 
        
        
        ],),
      ), 
      const Spacer(), 
      Text(title! , style: TextStyle( 
      
      color: isDark!? COLOR_CONST.base2:COLOR_CONST.base2_dark
      ),),
      SizedBox(height: 8.h,), 
      
      
      
      
      ],),),
      ),
      )
      
      , 
      
       Visibility(
        visible: isSelected!,
        child: 
      
      const PositionedDirectional(
        top: 10, 
        end: 10,
        
        child: Icon(Icons.check_circle , color: Colors.blue,))
      
      )
      
      
      
      ],
      ),
    )
    
    ;
  }
}