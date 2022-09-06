import 'package:flutter/material.dart';
import 'package:flutter_ecommer_app/core/route.dart';
class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, Routes.home);
          }, icon: Icon(Icons.home,color: Colors.white,)),
          IconButton(onPressed: (){
            Navigator.pushNamed(context, Routes.cart_screen);
          }, icon: Icon(Icons.shopping_cart,color: Colors.white)),
          IconButton(onPressed: (){}, icon: Icon(Icons.person,color: Colors.white)),
        ],
      ),
    );
  }
}