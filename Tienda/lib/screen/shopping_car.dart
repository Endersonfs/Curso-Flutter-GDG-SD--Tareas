import 'package:flutter/material.dart';

class ShoppingCar extends StatelessWidget {
  static const String routename ="shoppingcar";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Icon(Icons.shopping_cart),
            SizedBox(width: 20,),
            Text("Lista de Productos")
          ],
        ),
      ),
      body: Center(
        Text("Lista de productos a comprar")
      ),
    );
  }
}