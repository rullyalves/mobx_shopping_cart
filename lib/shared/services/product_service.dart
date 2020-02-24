

import 'package:mobx_test/shared/models/product.dart';

abstract class ProductService{
  Future<List<Product>> findAll();
}