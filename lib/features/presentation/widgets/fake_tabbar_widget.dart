import 'package:flutter/material.dart';

class FakeTabBarWidget extends StatelessWidget {
  const FakeTabBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Row(
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 30),
            child: Text('Pie',
                style: TextStyle(
                  color: Color(0xFFE4874A),
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 30),
            child: Text('Dessert',
                style: TextStyle(
                  fontSize: 20,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 30),
            child: Text('Cake',
                style: TextStyle(
                  fontSize: 20,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 30),
            child: Text('Pizza',
                style: TextStyle(
                  fontSize: 20,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 30),
            child: Text('Pasta',
                style: TextStyle(
                  fontSize: 20,
                )),
          ),
        ],
      ),
    );
  }
}
