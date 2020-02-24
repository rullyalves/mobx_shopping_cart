import 'package:mobx/mobx.dart';
import 'package:mobx_test/shared/models/product.dart';
import 'package:mobx_test/shared/services/product_service.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  final ProductService _productService;

  @observable
  ObservableFuture<List<Product>> products = ObservableFuture.value(null);

  @computed
  bool get loading => products.status == FutureStatus.pending;

  @computed
  bool get hasError => products.error != null;

  _HomeStoreBase(this._productService);
  
  @action
  void reload(){
    products = _productService.findAll().asObservable();
  }
  
}