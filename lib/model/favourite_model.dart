import 'package:equatable/equatable.dart';
import 'package:flutter_ecommer_app/model/product_model.dart';

class FavouriteModel extends Equatable{
  final List<ProductModel> products;

  const FavouriteModel({this.products = const<ProductModel>[]});

  @override
  List<Object?> get props => [products];

}