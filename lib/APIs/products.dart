import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:wearift/models/product.dart';

Future<String> _loadProductAsset() async {
  return await rootBundle.loadString('assets/json/products.json');
}

Future<ProductResponse> loadProducts() async {
  String jsonString = await _loadProductAsset();
  final jsonResponse = json.decode(jsonString);
  ProductResponse response = ProductResponse.fromJson(jsonResponse['data']);
  return response;
}
