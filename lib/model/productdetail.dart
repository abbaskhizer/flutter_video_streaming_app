import 'package:flutter/material.dart';
import 'package:flutter_video_streaming/model/product.dart';

class DetailProduct {
  String name;
  List<Product> listProduct = [];
  IconData icon;
  DetailProduct(
      {required this.name, required this.icon, required this.listProduct});
}
