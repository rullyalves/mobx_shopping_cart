import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_test/cart/cart_page.dart';
import 'package:mobx_test/home/stores/home_store.dart';
import 'package:mobx_test/shared/models/cart_item.dart';
import 'package:mobx_test/shared/models/cart_store.dart';
import 'package:mobx_test/shared/services/rest_product_service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  HomeStore _homeStore;
  ShoppingCart _counterStore;

  @override
  void initState() {
    _homeStore = HomeStore(RestProductService());
    _homeStore.reload();
    _counterStore = ShoppingCart();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Observer(builder: (_) {
          return Text("${_counterStore.itemsCount}");
        }),
      ),
      body: Observer(builder: (_) {
        final items = _homeStore.products.value;
        if (_homeStore.hasError)
          return const Center(
            child: Text("Ocorreu um erro"),
          );
        else if (_homeStore.loading)
          return const Center(
            child: CircularProgressIndicator(),
          );
        else
          return RefreshIndicator(
            
            onRefresh: () async {
              _homeStore.reload();
            },
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (_, int index) {
                  final product = items[index];
                  return Observer(builder: (_) {
                    return ListTile(
                      leading: _counterStore.contains(product)
                          ? const Icon(Icons.remove_shopping_cart,
                              color: Colors.red)
                          : const Icon(Icons.add_shopping_cart,
                              color: Colors.red),
                      onTap: () {
                        if (_counterStore.contains(product)) {
                          _counterStore.remove(CartItem(product));
                        } else {
                          _counterStore.add(product);
                        }
                      },
                      title: Text("${product.name}"),
                      subtitle: Text(
                        "${product.price.toStringAsFixed(2)}",
                      ),
                    );
                  });
                }),
          );
      }),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.shopping_cart),
          onPressed: () {
            Navigator.push(
                context,
                CupertinoPageRoute(
                    builder: (_) => CartPage(
                          shoppingCart: _counterStore,
                        )));
          }),
    );
  }
}
