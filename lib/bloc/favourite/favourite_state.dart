part of 'favourite_bloc.dart';


abstract class FavouriteState  extends Equatable{

  @override
  List<Object?> get props => [];
}

class FavouriteLoading extends FavouriteState{}

class FavouriteLoaded extends FavouriteState{
  final FavouriteModel favourite;
  FavouriteLoaded({this.favourite = const FavouriteModel()});

  @override
  List<Object?> get props => [favourite];
}

class FavouriteError extends FavouriteState{}