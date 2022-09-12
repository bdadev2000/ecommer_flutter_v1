import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommer_app/bloc/favourite/favourite_bloc.dart';
import 'package:flutter_ecommer_app/core/route.dart';
import 'package:flutter_ecommer_app/ui/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => FavouriteBloc()..add(StartFavourite()))
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: Routes.routes,
        initialRoute: Routes.home,
      ),
    );
  }
}

