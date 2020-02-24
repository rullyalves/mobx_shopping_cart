// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ShoppingCart on _ShoppingCartBase, Store {
  Computed<int> _$itemsCountComputed;

  @override
  int get itemsCount =>
      (_$itemsCountComputed ??= Computed<int>(() => super.itemsCount)).value;
  Computed<double> _$totalComputed;

  @override
  double get total =>
      (_$totalComputed ??= Computed<double>(() => super.total)).value;

  final _$obsAtom = Atom(name: '_ShoppingCartBase.obs');

  @override
  ObservableList<CartItem> get obs {
    _$obsAtom.context.enforceReadPolicy(_$obsAtom);
    _$obsAtom.reportObserved();
    return super.obs;
  }

  @override
  set obs(ObservableList<CartItem> value) {
    _$obsAtom.context.conditionallyRunInAction(() {
      super.obs = value;
      _$obsAtom.reportChanged();
    }, _$obsAtom, name: '${_$obsAtom.name}_set');
  }

  final _$_ShoppingCartBaseActionController =
      ActionController(name: '_ShoppingCartBase');

  @override
  void add(Product item) {
    final _$actionInfo = _$_ShoppingCartBaseActionController.startAction();
    try {
      return super.add(item);
    } finally {
      _$_ShoppingCartBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void remove(CartItem item) {
    final _$actionInfo = _$_ShoppingCartBaseActionController.startAction();
    try {
      return super.remove(item);
    } finally {
      _$_ShoppingCartBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'obs: ${obs.toString()},itemsCount: ${itemsCount.toString()},total: ${total.toString()}';
    return '{$string}';
  }
}
