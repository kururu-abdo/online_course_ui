import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learnig_ui/constants/colors.dart';
import 'package:online_learnig_ui/data/models/course_level.dart';
import 'package:online_learnig_ui/data/models/course_model.dart';
import 'package:online_learnig_ui/presentation/widgets/cart_widget.dart';
import 'package:online_learnig_ui/presentation/widgets/course_card.dart';

class SearchScreen extends HookWidget{
   const SearchScreen({super.key});


  
    Widget _category(String tag){
    
  
return
    const SizedBox();
    
    
 
  }

  @override
  Widget build(BuildContext context) {
var categories =useState(
  [ 

    "Technology",    "Business", 

   "Finance",    "Python",  "Programming",    "Swift", 
      "React Native", 
  ]
);
    var courses = useState(
      [ 


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






  ]
    );

var showSearchResult =useState(false);
    var searchText =useState("");

    return    Scaffold(
       backgroundColor: isDark(context)? COLOR_CONST.background_color_dark: COLOR_CONST.primaryColor,
      body:  SizedBox.expand(


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
    //  Navigator.pop(context);
     }, icon: const Icon(Icons.arrow_back_ios , size: 20,color: Colors.white ,))
     ,
      Text(
      showSearchResult.value?
      "Search Results":
      
      'Explore' , style: const TextStyle(color: Colors.white),)
    
      ],
    )
    ,  
    
    const CartWidget()
    
    
      ],
    ),
  
  
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
    
     MediaQuery.of(context).size.height*.85,
     
     
width: MediaQuery.of(context).size.width, 

decoration:  BoxDecoration(
 color: COLOR_CONST.getContainerColor(context),  
  borderRadius: const BorderRadius.vertical(
    top: Radius.circular(30)
  )
),


child: Builder(builder: (_){

if (!showSearchResult.value) {
  return
Column(
      crossAxisAlignment: CrossAxisAlignment.start,

  children: [


TextFormField( 
onFieldSubmitted: (str){
     showSearchResult.value=true;
        searchText.value=str; 
},
decoration: InputDecoration( 
suffixIcon: const Icon(Icons.search ,

// color: COLOR_CONST.primaryColor,

),

hintStyle:  TextStyle(color:
isDark(context)?Colors.white:

 COLOR_CONST.base3, 

fontSize: 14, fontWeight: FontWeight.w400
), 

hintText: 'Form Placeholder',
  filled: true , 
  fillColor:isDark(context)?COLOR_CONST.base2_dark: Colors.white , 
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10) , 
    borderSide: BorderSide.none
  ) , 
enabledBorder:  OutlineInputBorder(
    borderRadius: BorderRadius.circular(10) , 
    borderSide: BorderSide.none
  ) , 
  focusedBorder:  OutlineInputBorder(
    borderRadius: BorderRadius.circular(10) , 
    borderSide: BorderSide.none
  ) , 

),
),

SizedBox(height: 10.h,), 

 const Text("Browser Category" , 
    
    style: TextStyle(
      fontWeight: FontWeight.bold , 
      fontSize: 14, 
    ),
    ), 
   SizedBox(height: 10.h,),  
 Wrap(
  direction: Axis.horizontal,
    runSpacing: 5.h,spacing: 5.h, 
    // alignment: WrapAlignment.start,
      // crossAxisAlignment: WrapCrossAlignment.center,
              // alignment: WrapAlignment.spaceBetween,
    children: categories.value.map((e) =>
    // const Text("d")
    
 
     GestureDetector(
      onTap: (){
        showSearchResult.value=true;
        searchText.value=e; 
        
              },
       child: Container(
           padding: const EdgeInsets.all(8),
       
       margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: COLOR_CONST.primaryColor, 
          borderRadius: BorderRadius.circular(50)
        ),
        child: Text(e , 
        
        style: const TextStyle(
          color: Colors.white, 
        
          fontWeight: FontWeight.w300
        ),
        ),
           ),
     )
 
 
    
    ).toList(),
  ),






    SizedBox(height: 10.h,), 
    const Text("Recommended Courses" , 
    
    style: TextStyle(
      fontWeight: FontWeight.bold , 
      fontSize: 14, 
    ),
    ), 

    SizedBox(height: 10.h,), 

    Expanded(
  flex: 2,
  child: ListView.builder(
    // physics: const FixedExtentScrollPhysics(),
  itemCount: courses.value.length,
  itemBuilder: (BuildContext context, int index) {
    return   CourseCard(courseModel: courses.value[index],
    
    cardType: CardType.Search,
    );
  },
),)


],);



}else {

  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

  children: [
    IconButton(onPressed: (){
showSearchResult.value=false;
    }, icon: const Icon(Icons.close, size: 30,)),
    SizedBox(height: 8.h,), 
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [ 
Text("Search Results for \"${searchText.value} \" ", overflow: TextOverflow.ellipsis , 

style: const TextStyle(
  fontSize: 14, fontWeight: FontWeight.bold
)
,)

,


Text("Total 10", 
overflow: TextOverflow.ellipsis , 

style: TextStyle(
  fontSize: 12, fontWeight: FontWeight.bold, 
  color: isDark(context)?COLOR_CONST.base4_dark:COLOR_CONST.base3
)
,)

  ],
), 

Expanded(child: ListView.builder(
  itemCount: courses.value.length,
  itemBuilder: (BuildContext context, int index) {
    return CourseCard(
      courseModel: courses.value[index],
    );
  },
),)




  ]);
}


}),
  )
)



    ])
      ),
    );
  }
} 