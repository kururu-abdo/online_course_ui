import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learnig_ui/constants/colors.dart';
import 'package:online_learnig_ui/data/models/section_model.dart';

class SectionWidget extends HookWidget {
  final SectionModel? sectionModel;
  const SectionWidget(this.sectionModel, {super.key});

  @override
  Widget build(BuildContext context) {
    var showList = useState(false); 

    return AnimatedCrossFade(firstChild: 
    
    GestureDetector(
      onTap: (){ 
        showList.value =!showList.value;
      },
      child: 
      
      Container(
        height: 65.h,
        width: MediaQuery.of(context).size.width,  
        padding: const EdgeInsets.all(10), 
        child: Column(crossAxisAlignment: CrossAxisAlignment.start ,
        children: [ 
        Text(sectionModel!.sectionName! , 
        
        style: const TextStyle(
      fontSize: 14 , fontWeight: FontWeight.w400
        ),
        ), 
      
      Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [ 
      
      
      Text("${sectionModel!.getCompletedCount()} / ${sectionModel!.sectionItems!.length} Unit" , 
      
      style: TextStyle(
        fontSize: 10 , fontWeight: FontWeight.w400 , 
        color: isDark(context)? COLOR_CONST.base4 :COLOR_CONST.base3
      ),
      )
      , 
      SizedBox(width: 5.w,),
      Container(width: 3.h ,height: 3.w,
      
      
      decoration: BoxDecoration(
        shape: BoxShape.circle, 
      color: isDark(context)? COLOR_CONST.base4 :COLOR_CONST.base3
      ),
      ),
      SizedBox(width: 5.w,),
      
      Text("${sectionModel!.getTotalMinuts()} min" , 
      
      style: TextStyle(
        fontSize: 10 , fontWeight: FontWeight.w400 , 
        color: isDark(context)? COLOR_CONST.base4 :COLOR_CONST.base3
      ),
      )
      
      
        ],
      )
      
        ],
        
        ),
      ),
    
    
    )
    
    ,
    
    
    
     secondChild: Column(children: [
     
     
         GestureDetector(
           onTap: (){ 
      showList.value =!showList.value;
           },
           child: Container(
      height: 65.h,
      width: MediaQuery.of(context).size.width,  
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10), 
      decoration:  BoxDecoration(
        color: isDark(context)?COLOR_CONST.base2_dark:Colors.transparent,
        border: const Border(
          bottom: BorderSide(
            width: .3
          )
        )
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start ,
      children: [ 
      Text(sectionModel!.sectionName! , 
      
      style: const TextStyle(
           fontSize: 14 , fontWeight: FontWeight.w400
      ),
      ), 
           
           Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [ 
           
           
           Text("${sectionModel!.getCompletedCount()} / ${sectionModel!.sectionItems!.length} Unit" , 
           
           style: TextStyle(
      fontSize: 10 , fontWeight: FontWeight.w400 , 
      color: isDark(context)? COLOR_CONST.base4 :COLOR_CONST.base3
           ),
           )
           , 
           SizedBox(width: 5.w,),
           Container(width: 3.h ,height: 3.w,
           
           
           decoration: BoxDecoration(
      shape: BoxShape.circle, 
           color: isDark(context)? COLOR_CONST.base4 :COLOR_CONST.base3
           ),
           ),
           SizedBox(width: 5.w,),
           
           Text("${sectionModel!.getTotalMinuts()} min" , 
           
           style: TextStyle(
      fontSize: 10 , fontWeight: FontWeight.w400 , 
      color: isDark(context)? COLOR_CONST.base4 :COLOR_CONST.base3
           ),
           )
           
           
      ],
           )
           
      ],
      
      ),
           ),
         )
         
     , 
     
     
     ListView.builder(
       shrinkWrap: true,
       itemCount: sectionModel!.sectionItems!.length,
       itemBuilder: (BuildContext context, int index) {
         var playItem = sectionModel!.sectionItems![index];
         return   
         
         
         Container(
           height: 65.h,
           width: MediaQuery.of(context).size.width,  
           padding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 10), 
           decoration: const BoxDecoration(
     
           ),
           child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start ,
        children: [ 
          Text(playItem.title! , 
          
          style: const TextStyle(
            fontSize: 14 , fontWeight: FontWeight.w400
          ),
          ), 
        
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ 
        
        
        Text("${playItem.sectionItemType}" , 
        
        style: TextStyle(
          fontSize: 10 , fontWeight: FontWeight.w400 , 
          color: isDark(context)? COLOR_CONST.base4 :COLOR_CONST.base3
        ),
        )
        , 
        SizedBox(width: 5.w,),
        Container(width: 3.h ,height: 3.w,
        
        
        decoration: BoxDecoration(
          shape: BoxShape.circle, 
        color: isDark(context)? COLOR_CONST.base4 :COLOR_CONST.base3
        ),
        ),
        SizedBox(width: 5.w,),
        
        Text("${playItem.minuts} min" , 
        
        style: TextStyle(
          fontSize: 10 , fontWeight: FontWeight.w400 , 
          color: isDark(context)? COLOR_CONST.base4 :COLOR_CONST.base3
        ),
        )
        
        
          ],
        )
        
        ],
        
        ),
     
     
     
     Visibility(visible: playItem.isCompleted! , 
     child: const Icon(Icons.check_box , color: COLOR_CONST.secondaryColor , size: 30,),
     
     )
      ],
           ),
         )
         
         
         
         
           ;
       },
       
     )
           
           
           
           
     ]),
    
     crossFadeState: showList.value? CrossFadeState.showSecond:  
     
      CrossFadeState.showFirst 
     , 
     
     
     
     duration: const Duration(milliseconds: 250));
  }


}