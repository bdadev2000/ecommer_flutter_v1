import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  final String title;
  const CustomAppBar({
    Key? key, required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Container(
        padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
        color: Colors.black,
        child: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite_border,color: Colors.black,),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
