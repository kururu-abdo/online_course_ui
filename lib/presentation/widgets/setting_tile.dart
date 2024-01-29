import 'package:flutter/material.dart';
import 'package:online_learnig_ui/constants/colors.dart';

class SettingTile extends StatelessWidget {
  final String? title;
  final Function()? onTap;
  
  const SettingTile({super.key, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8), 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ 
Text(title! , style:  TextStyle(
  color:isDark(context)?Colors.white: COLOR_CONST.base_dark , 
  fontSize: 14 , fontWeight: FontWeight.w400
),), 



IconButton(onPressed: (){
onTap!();
}, icon: Icon(Icons.arrow_forward_ios ,size: 20,color:
isDark(context)?

 const Color(0xFFFFFFFF):COLOR_CONST.base3,)
)

        ],
      ),
    );
  }
}