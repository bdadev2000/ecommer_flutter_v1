import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommer_app/bloc/favourite/favourite_bloc.dart';
import 'package:flutter_ecommer_app/components/card_product.dart';
import 'package:flutter_ecommer_app/components/custom_app_bar.dart';
import 'package:flutter_ecommer_app/components/custom_navigation_bar.dart';
import 'package:flutter_ecommer_app/model/product_model.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(title: 'Favourite'),
      bottomNavigationBar: CustomNavigationBar(),
      body:BlocBuilder<FavouriteBloc,FavouriteState>(
        builder: (context,state){
         if(state is FavouriteLoading){
            return Center(child: CircularProgressIndicator());
          }
          if(state is FavouriteLoaded){
            return  GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, childAspectRatio: 2.2),
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: CardProduct(
                      product: state.favourite.products[index],
                      withFactory: 1.1,
                      isFavourite: true,
                    ),
                  );
                },
                itemCount:  state.favourite.products.length);
          }else{
            return Text("Something went wrong");
          }
        },
      ),
    ));
  }
}
