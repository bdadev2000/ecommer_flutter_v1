import 'package:flutter/material.dart';
import 'package:flutter_ecommer_app/core/route.dart';
import 'package:flutter_ecommer_app/model/product_model.dart';

class CardProduct extends StatelessWidget {
  final ProductModel product;
  final double withFactory;
  final bool isFavourite;

  const CardProduct({
    Key? key,
    required this.product,
    this.withFactory = 2.2,
    this.isFavourite = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double withValue = MediaQuery.of(context).size.width / withFactory;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.product_screen, arguments: product);
      },
      child: Container(
        margin: EdgeInsets.only(right: 14),
        child: Stack(
          children: [
            Container(
              width: withValue,
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 4,
              child: Container(
                width: withValue,
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(width: 3, color: Colors.grey)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "\$ ${product.price}",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add_circle_outline_sharp,
                              color: Colors.white,
                            )),
                        isFavourite
                            ? IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                ))
                            : SizedBox(),
                      ],
                    ),
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
