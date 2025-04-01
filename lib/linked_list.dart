List<Product> products = [];
void main(List<String> args) {
  addProduct('#123', 'Shampo', 10000);
  addProduct('#456', 'Sabun', 3000);
  addProduct('#789', 'Mi Instan', 2500);

  print("---------------");

  showAllProduct(products);
}

void addProduct(String code, String name, int price) {
  Product product = Product().copyWith(code: code, name: name, price: price);

  products.add(product);
}

void showAllProduct(List<Product> products) {
  print("+------------+-----------------+----------+");
  print("| Code       | Name            | Price    |");
  print("+------------+-----------------+----------+");

  for (var product in products) {
    print("| ${product.code?.padRight(10)} | ${product.name?.padRight(15)} | ${product.price.toString().padLeft(8)} |");
  }

  print("+------------+-----------------+----------+");
}

class Product {
  final String? code;
  final String? name;
  final int? price;

  Product({this.code, this.name, this.price});

  Product copyWith({
    final String? code,
    final String? name,
    final int? price,
  }) {
    return Product(
      code: code ?? this.code,
      name: name ?? this.name,
      price: price ?? this.price,
    );
  }
}
