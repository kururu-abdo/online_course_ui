import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String? title;
  final Color? textColor;
  final Function()? onTap;
  final Color? buttonColor;
  const MainButton({super.key, this.title, this.textColor, this.onTap, this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap!();
      },
      child: Container(
      height: 50, 
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration( 
      
        color: buttonColor, 
        borderRadius: BorderRadius.circular(10)
      ),
      
      child: Center(child: Text(title!,  style: TextStyle(
      color: textColor
      
      ),),),
      ),
    );
  }
}