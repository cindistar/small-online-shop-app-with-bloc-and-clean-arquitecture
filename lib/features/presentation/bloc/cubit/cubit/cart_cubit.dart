// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_shop_app/core/services/cart_service.dart';
import 'package:online_shop_app/features/data/models/product_model.dart';

part 'cart_state.dart';
part 'cart_cubit.freezed.dart';

class CartCubit extends Cubit<CartState> {
  final CartService cartService;

  CartCubit(this.cartService) : super(Loaded(cartService.cartProducts));

  adding(Product item) {
    cartService.addProduct(item);
  }

  decrease(Product item) {
    cartService.decreaseQuantity(item);
  }

  remove(Product item) {
    cartService.removeItem(item);
  }

  clearProduct() {
    cartService.clear();
  }

  List<Product> get cart => cartService.cartProducts;

  get totalAmount => cartService.getTotal();

  get subTotal => cartService.getSubTotal();

  get productQuantity => cartService.productQuantity(cart);

  get decreaseQuantity => cartService.decreaseQuantity;
}
