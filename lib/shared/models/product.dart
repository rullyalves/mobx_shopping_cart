class Product {
  final String id;
  final String name;
  final double price;

  Product(this.id, this.name, this.price);

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ price.hashCode;

  @override
  bool operator ==(other) =>
      other is Product &&
      other.id == id &&
      other.name == name &&
      other.price == price;
}
