import 'package:flutter_modular/flutter_modular.dart';
import 'package:online_shop_app/core/services/cart_service.dart';
import 'package:online_shop_app/features/data/datasources/local/product_item_implementation.dart';
import 'package:online_shop_app/features/data/repositories/product_item_implementation.dart';
import 'package:online_shop_app/features/domain/usecases/get_product_item_usecase.dart';
import 'package:online_shop_app/features/presentation/bloc/cubit/cubit/cart_cubit.dart';
import 'package:online_shop_app/features/presentation/bloc/product/bloc/product_bloc.dart';
import 'package:online_shop_app/features/presentation/pages/cart_page.dart';
import 'package:online_shop_app/features/presentation/pages/detail_page.dart';
import 'package:online_shop_app/features/presentation/pages/home_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) => CartService()),
        Bind.factory((i) => ProductBloc(i())),
        Bind.factory((i) => CartCubit(i())),
        Bind.lazySingleton((i) => ProductItemDatasourceImplementation()),
        Bind.lazySingleton((i) => ProductItemImplementation(i())),
        Bind.lazySingleton((i) => GetProductItemUsecase(i())),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => const HomePage()),
    ChildRoute(
      '/detail',
      child: (context, args) => DetailPage(
        product: args.data,
      ),
    ),
    ChildRoute(
      '/cart',
      child: (context, args) => CartPage(
        product: args.data, list: [],
      ),
    ),
  ];
}
