import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommer_app/model/favourite_model.dart';
import 'package:flutter_ecommer_app/model/product_model.dart';

part 'favourite_event.dart';

part 'favourite_state.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  FavouriteBloc() : super(FavouriteLoading());

  @override
  Stream<FavouriteState> mapEventToState(
    FavouriteEvent event,
  ) async* {
    if (event is StartFavourite) {
      yield* _mapStartFavouriteToState();
    } else if (event is AddFavouriteProduct) {
      yield* _mapAddFavouriteProductToState(event, state);
    } else if (event is RemoveFavouriteProduct) {
      yield* _mapRemoveFavouriteProductToState(event, state);
    }
  }

  Stream<FavouriteState> _mapStartFavouriteToState() async* {
    yield FavouriteLoading();
    try {
      await Future<void>.delayed(Duration(seconds: 1));
      yield FavouriteLoaded();
    } catch (_) {}
  }

  Stream<FavouriteState> _mapAddFavouriteProductToState(
    AddFavouriteProduct event,
    FavouriteState state,
  ) async* {
    if (state is FavouriteLoaded) {
      try {
        yield FavouriteLoaded(
            favourite: FavouriteModel(
                products: List.from(state.favourite.products)
                  ..add(event.product)));
      } catch (_) {}
    }
  }

  Stream<FavouriteState> _mapRemoveFavouriteProductToState(
    RemoveFavouriteProduct event,
    FavouriteState state,
  ) async* {
    if (state is FavouriteLoaded) {
      try {
        yield FavouriteLoaded(
            favourite: FavouriteModel(
                products: List.from(state.favourite.products)
                  ..remove(event.product)));
      } catch (_) {}
    }
  }
}
