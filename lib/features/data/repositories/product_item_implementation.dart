import 'package:online_shop_app/features/data/datasources/product_item_datasource.dart';
import 'package:online_shop_app/features/data/models/product_model.dart';
import 'package:online_shop_app/features/domain/repository/product_item_repository.dart';

class ProductItemImplementation implements IProductItemRepository {
  final IProductItemDatasource remoteDatasource;

  ProductItemImplementation(this.remoteDatasource);

  @override
  Future<List<Product>> getProductItem() async {
    final products = await remoteDatasource.getProductItems();
    return products;
  }
}
