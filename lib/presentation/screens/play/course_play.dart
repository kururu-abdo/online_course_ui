
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learnig_ui/constants/colors.dart';
import 'package:online_learnig_ui/data/models/comment_model.dart';
import 'package:online_learnig_ui/data/models/course_model.dart';
import 'package:online_learnig_ui/data/models/section_item.dart';
import 'package:online_learnig_ui/data/models/section_model.dart';
import 'package:online_learnig_ui/presentation/widgets/comment_widget.dart';
import 'package:online_learnig_ui/presentation/widgets/section_widget.dart';
import 'package:online_learnig_ui/presentation/widgets/video_container.dart';

class CoursePlayScreen extends HookWidget {
  final CourseModel? courseModel;
  const CoursePlayScreen({this.courseModel, super.key});




  @override
  Widget build(BuildContext context) {
var title = useState("Introduction");
var comments = useState([ 

CommentModel(userName: 'Kururu', avatar: 'assets/images/dev.png', 
thumbsCount: 10, isLecturer: true, comment: 'Ultrices vitae auctor eu augue. Tincidunt id aliquet risus.')
, 
CommentModel(userName: 'Abdurrahim Hassan', avatar: 'assets/images/dev.png', 
thumbsCount: 100, isLecturer: false, comment: 'Ultrices vitae auctor eu augue. Tincidunt id aliquet risus.')
, 
CommentModel(userName: 'Abdo', avatar: 'assets/images/dev.png', 
thumbsCount: 20, isLecturer: false, comment: 'Ultrices vitae auctor eu augue. Tincidunt id aliquet risus.')

]);
var playlist = useState([ 


SectionModel(sectionItems: [ 

SectionItem(true, 
title: '1.Introduction', sectionItemType: SectionItemType.Video,
 index: 0, minuts: 12)
, 
SectionItem(false, 
title: '1.Basics', sectionItemType: SectionItemType.Video,
 index: 1, minuts: 4), 
 SectionItem(false, 
title: '1.For Loop', sectionItemType: SectionItemType.Video,
 index: 2, minuts: 5), 
 

], 

sectionName: 'Section 1 : Introduction '


)

,

  
SectionModel(sectionItems: [ 

SectionItem(true, 
title: '2. Advance', sectionItemType: SectionItemType.Video,
 index: 0, minuts: 60)
, 
SectionItem(false, 
title: '1.Basics', sectionItemType: SectionItemType.Video,
 index: 1, minuts: 5), 
 SectionItem(false, 
title: '1.While Loop', sectionItemType: SectionItemType.Video,

 index: 2, minuts: 23), 
 

], 

sectionName: 'Section 2 : Advance Section '


)

]);




var tab = useState(1);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, 

        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(
          Icons.arrow_back_ios ,color: Colors.white,
        )),
        centerTitle: false,
        titleSpacing: 0,
        title: Text(title.value , 
        style: const TextStyle(
          color: Colors.white
        ),
        
        ),
      ),
backgroundColor: isDark(context)?COLOR_CONST.background_color_dark:COLOR_CONST.primaryColor,
body:   Column(
children: [ 


  const VideoContainer(), 
Row(
  children: [ 

    Expanded(child:
    
     GestureDetector(
      onTap: (){ 
        tab.value=0;
      },
       child: Container(height: 52.h,
           
           decoration:  BoxDecoration(
        color:   
        
        tab.value==0?
       
        isDark(context)?COLOR_CONST.background_color_dark: COLOR_CONST.base1
        :
         isDark(context)?COLOR_CONST.base_dark: COLOR_CONST.base
       
       
       
           ),
       
       child: Center(child: Text( 
         "Course content", 
         style: TextStyle(
           fontSize: 12, fontWeight: FontWeight.w400 , 
       color:
        tab.value==0?
       
        isDark(context)?COLOR_CONST.base: COLOR_CONST.base_dark
        :
         isDark(context)?COLOR_CONST.base4_dark.withOpacity(.30): COLOR_CONST.base3
       
         ),
       ),),
       
           ),
     ), ), 
  
    Expanded(child:
    
     GestureDetector(
      onTap: (){ 
        tab.value=1;
      },
       child: Container(height: 52.h,
           
           decoration:  BoxDecoration(
        color:   
        
        tab.value==1?
       
      
        isDark(context)?COLOR_CONST.background_color_dark: COLOR_CONST.base1
        :
         isDark(context)?COLOR_CONST.base_dark: COLOR_CONST.base
       
       
       
       
           ),
       
       child: Center(child: Text( 
         "Discussion", 
         style: TextStyle(
           fontSize: 12, fontWeight: FontWeight.w400 , 
       color:
        tab.value==1?
       
        isDark(context)?COLOR_CONST.base: COLOR_CONST.base_dark
        :
         isDark(context)?COLOR_CONST.base4_dark.withOpacity(.30): COLOR_CONST.base3
       
         ),
       ),),
       
           ),
     ), ), 
  
  ],
)
, 
Expanded(child: 

Container(
  width: MediaQuery.of(context).size.width,
margin: EdgeInsets.zero,
  decoration: BoxDecoration(
    color:   isDark(context)?COLOR_CONST.background_color_dark: COLOR_CONST.base1
  ),

child: Builder(builder: (_){



if (tab.value==0) {
return  ListView.builder(
  shrinkWrap: true,
  padding: EdgeInsets.zero,
   itemCount: playlist.value.length,
   itemBuilder: (BuildContext context, int index) {
     return  SectionWidget(playlist.value[index]);
   },
 );
}else {

  return  Column(children: [

Expanded(
  child: ListView.builder(
    shrinkWrap: true,
    primary: true,
    padding: EdgeInsets.zero,
    itemCount: comments.value.length,
    itemBuilder: (BuildContext context, int index) {
      var comment = comments.value[index];
      return CommentWidget(comment);
    },
  ),
),

    // const Spacer(), 
isDark(context)?

Padding(
  padding: const EdgeInsets.all(20.0),
  child:  Column(children: [ 
 
TextFormField( 

decoration: InputDecoration( 
suffixIcon: Transform.rotate(
  angle: 150,
  child: IconButton(onPressed: (){
  
  }, icon: const Icon(Icons.send_outlined, color: COLOR_CONST.secondaryColor,)),
),
hintStyle:  TextStyle(color:
isDark(context)?Colors.white:

 COLOR_CONST.base3, 

fontSize: 14, fontWeight: FontWeight.w400
), 

hintText: 'Post new comment',
  filled: true , 
  fillColor:isDark(context)?COLOR_CONST.base2_dark: Colors.white , 
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10) , 
    borderSide: const BorderSide( 
      color: COLOR_CONST.base4_dark
    )
    
  ) , 
enabledBorder:  OutlineInputBorder(
    borderRadius: BorderRadius.circular(10) , 
   borderSide: const BorderSide( 
      color: COLOR_CONST.base4_dark
    )
  ) , 
  focusedBorder:  OutlineInputBorder(
    borderRadius: BorderRadius.circular(10) , 
  borderSide: const BorderSide( 
      color: COLOR_CONST.base4_dark
    )
  ) , 

),
),
 SizedBox(height: 15.h,)
  
  
  
  ],),
)
: 
 TextFormField(

  minLines: 2,
  maxLines: 10,
decoration: InputDecoration(
  contentPadding: const EdgeInsets.symmetric(vertical: 25 ,horizontal: 20), 
fillColor: Colors.white,
filled: true,
hintText: 'Post new comment',

suffixIcon: Transform.rotate(
  angle: 150,
  child: IconButton(onPressed: (){
  
  }, icon: const Icon(Icons.send_outlined, color: Colors.blue,)),
),

border: const OutlineInputBorder(
  borderSide: BorderSide.none,
  borderRadius: BorderRadius.vertical(top: Radius.circular(20))
), 
enabledBorder: const OutlineInputBorder(
  borderSide: BorderSide.none,
  borderRadius: BorderRadius.vertical(top: Radius.circular(20))
), 
focusedBorder: const OutlineInputBorder(
  borderSide: BorderSide.none,
  borderRadius: BorderRadius.vertical(top: Radius.circular(20))
), 




),

)

  ],);
}


}),

)
)

],

),
    );
  }
}