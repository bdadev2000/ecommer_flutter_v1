import 'package:flutter/material.dart';
import 'package:flutter_ecommer_app/core/route.dart';
import 'package:flutter_ecommer_app/model/ProductModel.dart';
class CardProduct extends StatelessWidget {
  final ProductModel product;
  const CardProduct({
    Key? key, required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, Routes.product_screen,arguments: product);
      },
      child: Container(
        margin:EdgeInsets.only(right: 14),
        child: Stack(
          children: [
            Container(
              width: 120,
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 4,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(width: 3, color: Colors.grey)
                ),
                child: Row(
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(product.name,style: TextStyle(color: Colors.white),),
                        Text("\$ ${product.price}",style: TextStyle(color: Colors.white),),
                      ],
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline_sharp,color: Colors.white,)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}