import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learnig_ui/constants/colors.dart';

class ProgessCard extends StatefulWidget {
  const ProgessCard({super.key});

  @override
  State<ProgessCard> createState() => _ProgessCardState();
}

class _ProgessCardState extends State<ProgessCard> with SingleTickerProviderStateMixin{

AnimationController? _animationController;
Animation<Offset>? _animation;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: 
    
    this , duration: const Duration(milliseconds: 500)
    );

    _animation= Tween<Offset>( 
begin: const Offset(-1, 0), 

end: const Offset(0, 0), 


    ).animate(_animationController!); 

    _animationController!.forward();
  }


  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController!,
      builder: (context ,child) {
        return SlideTransition(
          position: _animation!,
          child: Container(height: 170.h , 
            
            width: 325.w,

            padding: EdgeInsets.all(
              20.w
            ),
            decoration: BoxDecoration(
          color: 
          isDark(context)? COLOR_CONST.base2_dark:
          
          Colors.white, 
          
          borderRadius: BorderRadius.circular(10)
            )


            ,
            child:  Column( 
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [ 


Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,  
crossAxisAlignment: CrossAxisAlignment.start,

  children: [ 

 Column(
crossAxisAlignment: CrossAxisAlignment.start,
mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [


    SizedBox(width: 215.w , 
    
    child: const Text("Declarative interfaces for any Apple Devices",
    
    maxLines: 2,overflow: TextOverflow.ellipsis,
    ),
    ),  


    
  const Text("IDR 850.000",
    style: TextStyle(
      fontWeight: FontWeight.bold
    ),
    
    ),
  ],
 ), 

Container(
  height: 60.h ,width: 60.h,
  decoration: BoxDecoration(
    color: COLOR_CONST.primaryColor , 
    borderRadius: BorderRadius.circular(15)
  ),

  child: Center( 
child: Transform.rotate(angle:  45, 

child: Container(
  width: 22.h,height: 22.h,
  decoration:  BoxDecoration(
    color: const Color(0xFFFFFFFF).withOpacity(.17)
  ),
),



),


  ),
)

  ],
)
, 


Row(
  mainAxisAlignment: MainAxisAlignment.start, 
  children: [ 

Container(
  height: 35.h, 
  width: 35.h, 
  decoration: BoxDecoration(
    color: COLOR_CONST.base2, 
    borderRadius: BorderRadius.circular(10)
  ),
  child:  Center(
    child: 
    Image.asset("assets/images/award.png")
    
    // Icon(Icons.emoji_events),
  ),
)
, 

SizedBox(width: 10.w,) , 
const Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [ 


  Text('Current Progress',  
  style: TextStyle(
    fontSize: 10 ,fontWeight: FontWeight.w400, 
    color: COLOR_CONST.base3
  ),
  
  ), 


  Text('50%',
  style: TextStyle(
    fontSize: 15 ,fontWeight: FontWeight.w400, 
  ),
  
  ), 


],)

  ],
), 




                LinearProgressIndicator(
                  value: .20, 

                  color: Colors.green,
                  minHeight: 15.h,
                borderRadius: BorderRadius.circular(50),
                )
              ],
            ),
            
            
            
            
            
            ),
        );
      }
    );
  }
}