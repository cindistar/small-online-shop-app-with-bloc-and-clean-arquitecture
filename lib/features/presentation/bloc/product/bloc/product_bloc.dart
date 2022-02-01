import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_shop_app/features/domain/entitties/product_item_entity.dart';
import 'package:online_shop_app/features/domain/usecases/get_product_item_usecase.dart';
import 'package:online_shop_app/features/domain/usecases/usecase.dart';

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetProductItemUsecase productUsecase;

  ProductBloc(this.productUsecase) : super(const ProductInitial()) {
    on<ProductStartedEvent>(getProduct);
  }

  Future<void> getProduct(event, emit) async {
    emit(const ProductState.loading());
    var product = await productUsecase(NoParams());
    emit(ProductState.loaded(product));
  }
}


