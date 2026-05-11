class Food {
  final String id;
  final String name;
  final double price;
  final String image;
  final String categoryId;

  int quantity;

  Food({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.categoryId,
    this.quantity = 1,
  });
}