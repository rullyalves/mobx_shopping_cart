import 'package:mobx/mobx.dart';
import 'package:mobx_test/shared/models/cart_item.dart';
import 'package:mobx_test/shared/models/product.dart';
part 'cart_store.g.dart';

class ShoppingCart = _ShoppingCartBase with _$ShoppingCart;

abstract class _ShoppingCartBase with Store {
  @observable
  ObservableList<CartItem> obs = <CartItem>[].asObservable();

  @computed
  int get itemsCount => obs.length;

  @computed
  double get total =>
      obs.fold(0, (previousValue, element) => previousValue + element.total);

  @action
  void add(Product item) {
    obs.add(CartItem(item));
  }

  @action
  void remove(CartItem item) {
    obs.remove(item);
  }

  bool contains(Product product) {
    if (obs.contains(CartItem(product))) {
      return true;
    }
    return false;
  }
}
