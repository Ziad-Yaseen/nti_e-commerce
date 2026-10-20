import 'package:nti_e_commerce/data/models/product.dart';

List<Product> items = _generateProducts();

List<Product> _generateProducts() {
  List<Product> generatedItems = [];
  int idCounter = 1;

  final Map<String, Map<String, dynamic>> categoriesInfo = {
    'f': {'name': 'Fridge', 'count': 1, 'category': 'Home Appliances'},
    'h': {'name': 'Headphone', 'count': 3, 'category': 'Accessories'},
    'l': {'name': 'Laptop', 'count': 4, 'category': 'Computers'},
    'lm': {'name': 'Mac Laptop', 'count': 3, 'category': 'Computers'},
    'p': {'name': 'Phone', 'count': 5, 'category': 'Mobiles'},
    'pc': {'name': 'PC', 'count': 7, 'category': 'Computers'},
  };

  categoriesInfo.forEach((prefix, info) {
    int count = info['count'];
    String baseName = info['name'];
    String categoryName = info['category'];

    for (int i = 1; i <= count; i++) {
      generatedItems.add(
        Product(
          id: idCounter,
          name: '$baseName $i',
          imageUrl: 'assets/images/$prefix$i.png',
          price: 1000.0 + (i * 250),
          stock: i * 5,
          des:
              'A detailed description for $baseName number $i, featuring high quality and excellent performance.',
          rating: 4.0 + (i % 10) * 0.1,
          category: categoryName,
        ),
      );
      idCounter++;
    }
  });

  return generatedItems;
}
