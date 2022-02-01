// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:online_shop_app/features/data/models/product_model.dart';
import 'package:online_shop_app/features/presentation/bloc/cubit/cubit/cart_cubit.dart';

class CartProductCardWidget extends StatefulWidget {
  final Product product;
  final int quantity;
  const CartProductCardWidget(
      {Key? key, required this.product, required this.quantity})
      : super(key: key);

  @override
  State<CartProductCardWidget> createState() => _CartProductCardWidgetState();
}

class _CartProductCardWidgetState extends State<CartProductCardWidget> {
  final cubit = Modular.get<CartCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => cubit,
      child: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(15),
            child: Stack(
              children: [
                Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(
                            0.2,
                          ),
                          spreadRadius: 3.0,
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Container(
                          //color: Colors.green,
                          height: 50,
                          width: 100,
                          child: Text(
                            widget.product.title,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          //color: Colors.green,
                          height: 20,
                          width: 100,
                          child: Text(
                            '\$${widget.product.price.toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    )),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(
                      15,
                    ),
                  ),
                  child: Container(
                    height: 120,
                    width: 120,
                    color: Colors.orange,
                    child: Image.network(
                      widget.product.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 100,
                  child: Container(
                    child: IconButton(
                      icon: const Icon(Icons.add_circle),
                      onPressed: () {
                        setState(() => cubit.adding(widget.product));
                        setState(() {
                          
                        });
                      },
                    ),
                  ),
                ),
                Positioned(
                  top: 53,
                  right: 65,
                  child: Container(
                    height: 30,
                    width: 30,
                    //color: Colors.blue,
                    child: Text(
                      (widget.quantity).toString(),
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 20,
                  child: Container(
                    child: IconButton(
                      onPressed: () {
                        cubit.decrease(widget.product);
                      },
                      icon: const Icon(
                        Icons.remove_circle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
