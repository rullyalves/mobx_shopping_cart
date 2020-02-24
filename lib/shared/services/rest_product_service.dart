import 'package:mobx_test/shared/models/product.dart';
import 'package:mobx_test/shared/services/product_service.dart';

class RestProductService implements ProductService {
  @override
  Future<List<Product>> findAll() {
    try {
      return Future.delayed(
          Duration(seconds: 2),
          () => List<Product>.generate(
              10,
              (index) =>
                  Product("$index", "produto $index", (index * 35.951 / 2.5))));
    } catch (e) {
      rethrow;
    }
  }
}
