import 'package:flutter/material.dart';
import 'package:online_learnig_ui/presentation/screens/cart/cart.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  IconButton(onPressed: (){
    Navigator.of(context).push(
      
      MaterialPageRoute(builder: (_)=>const CartScreen() )
    );
    }, icon: const ImageIcon(AssetImage("assets/images/cart.png") , 
    
    color: Colors.white,));
  }
}