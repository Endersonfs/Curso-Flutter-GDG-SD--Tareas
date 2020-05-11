import 'package:flutter/material.dart';

class ProducDetails extends StatelessWidget {
  static const String routname ="producdetails";
  ProductDetails();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children:<Width>[
            Icon(Icons.shopping_basket),
            SizedBox(Width: 20),
            Text("Detalles de producto")
          ]
        ); 
      ),
      body: Center(child: Text(""),)
    );
  }
}