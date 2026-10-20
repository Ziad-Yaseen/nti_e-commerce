class Product {
  String id;
  String name;
  double price;
  String category;
  String imageUrl;
  int stock;
  double rating;
  String des;

  Product({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    this.stock = 1,
    required this.des,
    required this.rating,
    this.category = "public",
  });
}
