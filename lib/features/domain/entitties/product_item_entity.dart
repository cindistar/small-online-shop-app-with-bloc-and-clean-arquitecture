
class ProductItemEntity {
  final int id;
  final String imageUrl;
  final String title;
  final double price;
  final int quantity;

  const ProductItemEntity({
    required this.id, 
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.quantity,
  });
}
