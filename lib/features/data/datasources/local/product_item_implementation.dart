import 'package:online_shop_app/features/data/datasources/product_item_datasource.dart';
import 'package:online_shop_app/features/data/models/product_model.dart';

class ProductItemDatasourceImplementation implements IProductItemDatasource {
  @override
  Future<List<Product>> getProductItems() async {
    List<Product> products = [
      const Product(
        id: 001,
        title: 'Dessert',
        imageUrl:
            'https://images.pexels.com/photos/1854652/pexels-photo-1854652.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        price: 5.99,
        quantity: 1,
      ),
      const Product(
        id: 002,
        title: 'Pizza',
        imageUrl:
            'https://images.pexels.com/photos/315755/pexels-photo-315755.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        price: 10.0,
        quantity: 1,
      ),
      const Product(
        id: 003,
        title: 'Salad',
        imageUrl:
            'https://images.pexels.com/photos/1824353/pexels-photo-1824353.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        price: 13.70,
        quantity: 1,
      ),
      const Product(
        id: 004,
        title: 'Pasta',
        imageUrl:
            'https://images.pexels.com/photos/5848496/pexels-photo-5848496.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        price: 20.00,
        quantity: 1,
      ),
      const Product(
        id: 005,
        title: 'Cupcake',
        imageUrl:
            'https://images.pexels.com/photos/1055272/pexels-photo-1055272.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        price: 4.78,
        quantity: 1,
      ),
      const Product(
        id: 006,
        title: 'Donuts',
        imageUrl:
            'https://images.pexels.com/photos/4686958/pexels-photo-4686958.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        price: 3.50,
        quantity: 1,
      ),
      const Product(
        id: 007,
        title: 'Pie',
        imageUrl:
            'https://images.pexels.com/photos/1126359/pexels-photo-1126359.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
        price: 5.99,
        quantity: 1,
      ),
      const Product(
        id: 008,
        title: 'Cake',
        imageUrl:
            'https://images.pexels.com/photos/10281284/pexels-photo-10281284.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        price: 10.0,
        quantity: 1,
      ),
      const Product(
        id: 009,
        title: 'Choco Cake',
        imageUrl:
            'https://images.pexels.com/photos/4109998/pexels-photo-4109998.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        price: 13.70,
        quantity: 1,
      ),
      const Product(
        id: 0010,
        title: 'Cupcake Fruit',
        imageUrl:
            'https://images.pexels.com/photos/1055270/pexels-photo-1055270.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
        price: 20.00,
        quantity: 1,
      ),
      const Product(
        id: 0011,
        title: 'Dessert Ice',
        imageUrl:
            'https://images.pexels.com/photos/3185509/pexels-photo-3185509.png?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
        price: 4.78,
        quantity: 1,
      ),
      const Product(
        id: 0012,
        title: 'Veg Salad',
        imageUrl:
            'https://images.pexels.com/photos/6957279/pexels-photo-6957279.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        price: 3.50,
        quantity: 1,
      ),
    ];
    return products;
  }
}

