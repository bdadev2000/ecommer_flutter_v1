import 'package:flutter/material.dart';
class TitleSection extends StatelessWidget {
  final String title;

  const TitleSection({
    Key? key, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.grey
    ),);
  }
}
