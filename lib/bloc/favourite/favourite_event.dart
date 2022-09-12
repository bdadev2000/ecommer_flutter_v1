part of 'favourite_bloc.dart';

abstract class FavouriteEvent  extends Equatable{

  @override
  List<Object?> get props => [];
}

class StartFavourite  extends FavouriteEvent{}

class AddFavouriteProduct  extends FavouriteEvent{
  final ProductModel product;

  AddFavouriteProduct(this.product);
  @override
  List<Object?> get props => [product];
}

class RemoveFavouriteProduct  extends FavouriteEvent{
  final ProductModel product;

  RemoveFavouriteProduct(this.product);

  @override
  List<Object?> get props => [product];
}