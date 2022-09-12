import 'package:flutter/material.dart';
import 'package:flutter_ecommer_app/components/card_product.dart';
import 'package:flutter_ecommer_app/model/product_model.dart';
class ProductCarousel extends StatelessWidget {
  final List<ProductModel> products;
  const ProductCarousel({
    Key? key, required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context,index){
          final ProductModel item =products[index];
          return CardProduct(product: item, withFactory: 2.2,);
        },
        itemCount: products.length,
      ),
    );
  }
}
