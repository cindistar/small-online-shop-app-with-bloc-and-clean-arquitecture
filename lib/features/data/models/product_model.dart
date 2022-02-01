import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_shop_app/features/domain/entitties/product_item_entity.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class Product with _$Product implements ProductItemEntity {
  const factory Product({
    required int id,
    required String imageUrl,
    required String title,
    required double price,
    required int quantity,
  }) = _Product;
  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
