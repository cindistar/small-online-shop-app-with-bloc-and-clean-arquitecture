import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:online_shop_app/features/data/models/product_model.dart';
import 'package:online_shop_app/features/presentation/bloc/cubit/cubit/cart_cubit.dart';

class DetailPage extends StatelessWidget {
  final Product product;
  const DetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Modular.to.pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        title: const Text(
          'Detail',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                product.title,
                style: const TextStyle(
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: Color(
                    0xFFF17532,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(140),
            // ignore: sized_box_for_whitespace
            child: Container(
              height: 250,
              width: 250,
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Center(
            child: Text(
              '\$${product.price.toStringAsFixed(2)}'.toString(),
              style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Color(
                  0xFFF17532,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Center(
            child: Text(
              product.title,
              style: const TextStyle(
                color: Color(0xFF575E67),
                fontSize: 24.0,
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Center(
            // ignore: sized_box_for_whitespace
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              child: const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color(
                    0xFFB4B8B9,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: const Color(
                  0xFFF17532,
                ),
              ),
              child: Center(
                child: TextButton(
                  onPressed: () {
                    final cart = Modular.get<CartCubit>();
                    cart.adding(product);
                    Modular.to.pushNamed('./cart', arguments: product);
                  },
                  child: const Text(
                    'Add to cart',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
