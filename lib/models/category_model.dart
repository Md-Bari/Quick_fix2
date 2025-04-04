import 'package:flutter/material.dart';

class Category {
  String name;
  String model;
  double price;
  String imgAddress;
  Color modelColor;

  // Correct constructor
  Category({
    required this.name,
    required this.model,
    required this.price,
    required this.imgAddress,
    required this.modelColor,
  });
}
