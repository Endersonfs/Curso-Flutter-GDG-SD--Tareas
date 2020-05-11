// widget para mostrar productos
import 'package:Tienda/modal/product.dart';
import 'package:Tienda/screen/product_details.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  static const routename = "/product-list";
  List<Product> listadeProducto = [
    Product(
      id: "1",
      name: "Correa",
      price: 125.00
    ),
    Product(
      id:"2",
      name:"Anillo Conquistadores",
      price:25.6
    ),
    Product(
      id:"3",
      name: "Esp.Gatos",
      price: 25.00
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mis Productos"),
      ),
      body: ListView.builder(
        itemCount: listadeProducto.length,
        itemBuilder: (ctx, index)=> ListTile(
          leading: CircleAvatar(
            child: Text(listadeProducto[index].id),
          ),
          title: Text(listadeProducto[index].name),
          trailing: Text(listadeProducto[index].price.toStringAsFixed(2),                  
        ),
        onTap: (){
          Navigator.of(context).pushNamed(ProducDetails.routename, arguments: listadeProducto[index].name);
        },
        ),
    )
    );
  }
}