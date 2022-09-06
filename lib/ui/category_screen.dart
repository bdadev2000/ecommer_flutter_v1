import 'package:flutter/material.dart';
import 'package:flutter_ecommer_app/components/card_product.dart';
import 'package:flutter_ecommer_app/components/custom_app_bar.dart';
import 'package:flutter_ecommer_app/components/custom_navigation_bar.dart';
import 'package:flutter_ecommer_app/components/product_carousel.dart';
import 'package:flutter_ecommer_app/model/ProductModel.dart';
import 'package:flutter_ecommer_app/model/category_model.dart';

class CategoryScreen extends StatelessWidget {
  final CategoryModel category;

  const CategoryScreen({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ProductModel> categoryProducts = ProductModel.products.where((product) => product.category == category.name).toList();
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: category.name),
        bottomNavigationBar: CustomNavigationBar(),
        body: GridView.builder(
            padding: EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 16
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.15),
            itemBuilder: (BuildContext context,int index){
              final ProductModel categoryProduct = categoryProducts[index];
              return Center(
                child: CardProduct(product: categoryProduct),
              );
            },itemCount: categoryProducts.length),
      ),
    );
  }
}
