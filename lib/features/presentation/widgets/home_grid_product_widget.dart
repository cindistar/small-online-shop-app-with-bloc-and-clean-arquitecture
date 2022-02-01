// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:online_shop_app/features/domain/entitties/product_item_entity.dart';

class ProductGridWidget extends StatelessWidget {
  final ProductItemEntity product;

  const ProductGridWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        Modular.to.pushNamed('./detail',
            arguments: product);
      },
      child: Stack(
        children: [
          Container(
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
          ),
          Positioned(
            left: 25,
            top: 15,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(75),
              // ignore: sized_box_for_whitespace
              child: Container(
                height: 120,
                width: 120,
                child: Image.network(
                  product.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            right: 30,
            top: 150,
            // ignore: sized_box_for_whitespace
            child: Container(
              height: 50,
              width: 110,
              //color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '\$${product.price.toStringAsFixed(2)}'.toString(),
                    style: const TextStyle(
                      color: Color(0xFFF17532),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    product.title,
                    style: const TextStyle(
                      color: Color(0xFF575E67),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
