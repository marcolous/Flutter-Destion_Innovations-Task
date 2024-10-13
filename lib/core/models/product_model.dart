import 'package:flutter/material.dart';

class ProductModel {
  final Widget image;
  final String name;
  final double price;
  final double? discount;

  ProductModel({
    required this.image,
    required this.name,
    required this.price,
    this.discount,
  });

  double get discountedPrice {
    if (discount != null) {
      return price - (price * discount! / 100);
    }
    return price;
  }
}
