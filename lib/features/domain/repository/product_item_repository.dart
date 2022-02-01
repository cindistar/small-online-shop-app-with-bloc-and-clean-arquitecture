
import 'package:online_shop_app/features/domain/entitties/product_item_entity.dart';

abstract class IProductItemRepository {
  Future<List<ProductItemEntity>> getProductItem();
}
