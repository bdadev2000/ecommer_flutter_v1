import 'package:flutter/material.dart';
import 'package:flutter_ecommer_app/components/custom_app_bar.dart';
import 'package:flutter_ecommer_app/components/custom_navigation_bar.dart';
import 'package:flutter_ecommer_app/core/route.dart';
class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(title: 'Cart'),
          bottomNavigationBar: CustomNavigationBar(),
        ));
  }
}


