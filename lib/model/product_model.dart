import 'package:equatable/equatable.dart';

class ProductModel extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const ProductModel(
      {required this.name,
      required this.category,
      required this.imageUrl,
      required this.price,
      required this.isRecommended,
      required this.isPopular});

  @override
  List<Object?> get props =>
      [name, category, imageUrl, price, isRecommended, isPopular];

  static List<ProductModel> products = [
    ProductModel(
        name: 'Soft-Drink #1',
        category: 'Soft-Drink',
        imageUrl:
            'https://images.unsplash.com/photo-1534353473418-4cfa6c56fd38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        price: 2.99,
        isRecommended: true,
        isPopular: false),
    ProductModel(
        name: 'Soft-Drink #2',
        category: 'Soft-Drink',
        imageUrl:
        'https://images.unsplash.com/photo-1534353473418-4cfa6c56fd38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        price: 3.5,
        isRecommended: false,
        isPopular: true),
    ProductModel(
        name: 'Smoothies #1',
        category: 'Smoothies',
        imageUrl:
        'https://images.unsplash.com/photo-1534353473418-4cfa6c56fd38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        price: 2.16,
        isRecommended: true,
        isPopular: false),
    ProductModel(
        name: 'Smoothies #2',
        category: 'Smoothies',
        imageUrl:
        'https://images.unsplash.com/photo-1567671899076-51a64ddb7c5d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1024&q=80',
        price: 3.10,
        isRecommended: false,
        isPopular: false),
    ProductModel(
        name: 'Water #1',
        category: 'Water',
        imageUrl:
        'https://images.unsplash.com/photo-1567671899076-51a64ddb7c5d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1024&q=80',
        price: 2.6,
        isRecommended: false,
        isPopular: false),
    ProductModel(
        name: 'Water #2',
        category: 'Water',
        imageUrl:
        'https://images.unsplash.com/photo-1567671899076-51a64ddb7c5d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1024&q=80',
        price: 2.99,
        isRecommended: true,
        isPopular: false),
  ];
}
