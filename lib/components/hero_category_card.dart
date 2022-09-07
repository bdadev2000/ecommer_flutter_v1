import 'package:flutter/material.dart';
import 'package:flutter_ecommer_app/core/route.dart';
import 'package:flutter_ecommer_app/model/product_model.dart';
import 'package:flutter_ecommer_app/model/category_model.dart';
class HeroCarouselCard extends StatelessWidget {
  final CategoryModel? category;
  final ProductModel? product;

  const HeroCarouselCard({Key? key, this.category, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(this.product==null){
          Navigator.pushNamed(context, Routes.category_screen,arguments: category);
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 20
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(product==null ? category!.imageUrl : product!.imageUrl,
                    fit: BoxFit.cover, width: 1000.0),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      product == null ? category!.name : '',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}