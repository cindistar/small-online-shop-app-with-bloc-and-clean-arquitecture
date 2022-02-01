

import 'package:online_shop_app/features/domain/entitties/product_item_entity.dart';
import 'package:online_shop_app/features/domain/repository/product_item_repository.dart';
import 'package:online_shop_app/features/domain/usecases/usecase.dart';

class GetProductItemUsecase implements UseCase<ProductItemEntity, NoParams> {
  final IProductItemRepository repository;

  GetProductItemUsecase(this.repository);

  @override
  Future<List<ProductItemEntity>> call(params) async {
    return await repository.getProductItem();
  }
}
