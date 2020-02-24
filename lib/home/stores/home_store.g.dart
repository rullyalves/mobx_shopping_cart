// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStoreBase, Store {
  Computed<bool> _$loadingComputed;

  @override
  bool get loading =>
      (_$loadingComputed ??= Computed<bool>(() => super.loading)).value;
  Computed<bool> _$hasErrorComputed;

  @override
  bool get hasError =>
      (_$hasErrorComputed ??= Computed<bool>(() => super.hasError)).value;

  final _$productsAtom = Atom(name: '_HomeStoreBase.products');

  @override
  ObservableFuture<List<Product>> get products {
    _$productsAtom.context.enforceReadPolicy(_$productsAtom);
    _$productsAtom.reportObserved();
    return super.products;
  }

  @override
  set products(ObservableFuture<List<Product>> value) {
    _$productsAtom.context.conditionallyRunInAction(() {
      super.products = value;
      _$productsAtom.reportChanged();
    }, _$productsAtom, name: '${_$productsAtom.name}_set');
  }

  final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase');

  @override
  void reload() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction();
    try {
      return super.reload();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'products: ${products.toString()},loading: ${loading.toString()},hasError: ${hasError.toString()}';
    return '{$string}';
  }
}
