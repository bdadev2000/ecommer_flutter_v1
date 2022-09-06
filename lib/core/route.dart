
import 'package:flutter/material.dart';
import 'package:flutter_ecommer_app/model/ProductModel.dart';
import 'package:flutter_ecommer_app/model/category_model.dart';
import 'package:flutter_ecommer_app/ui/cart_screen.dart';
import 'package:flutter_ecommer_app/ui/category_screen.dart';
import 'package:flutter_ecommer_app/ui/home_screen.dart';
import 'package:flutter_ecommer_app/ui/product_screen.dart';


class Routes{
  Routes._();
  static const String home = '/';
  static const String cart_screen = '/cart';
  static const String category_screen = '/category';
  static const String product_screen = '/product';

  static var routes = {
    home:(context) => HomeScreen(),
    cart_screen:(context) => CartScreen(),
    category_screen:(context){
      final args = ModalRoute.of(context)?.settings.arguments as CategoryModel;
      return CategoryScreen(category: args);
    },

    product_screen:(context){
      final args = ModalRoute.of(context)?.settings.arguments as ProductModel;
      return ProductScreen(product: args);
    }
  };
}