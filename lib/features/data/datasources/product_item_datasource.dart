import 'package:online_shop_app/features/data/models/product_model.dart';

abstract class IProductItemDatasource {
  Future<List<Product>> getProductItems();
}