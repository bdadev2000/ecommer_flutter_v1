import 'package:equatable/equatable.dart';

class CategoryModel extends Equatable{
  final String name;
  final String imageUrl;

  CategoryModel({required this.name, required this.imageUrl});

  static List<CategoryModel> categories = [
    CategoryModel(name: 'Soft-Drink', imageUrl: 'https://images.unsplash.com/photo-1609951651556-5334e2706168?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
    CategoryModel(name: 'Smoothies', imageUrl: 'https://images.unsplash.com/photo-1546171753-97d7676e4602?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
    CategoryModel(name: 'Water', imageUrl: 'https://images.unsplash.com/flagged/photo-1557753478-b9fb74f39eb5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=686&q=80'),
  ];

  @override
  List<Object?> get props => [name,imageUrl];
}

