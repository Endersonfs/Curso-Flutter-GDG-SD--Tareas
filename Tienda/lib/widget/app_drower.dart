import 'package:Tienda/screen/products_screen.dart';
import 'package:Tienda/screen/shopping_car.dart';
import 'package:flutter/material.dart';

class AppDrower extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children:<Widget>[
          Divider(),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.person),),
            title: Text("admin@shop.com"),
            subtitle: Text("Administrador"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shopping_basket, color: Colors.blue,),
            title: Text("Mi Productos"),
            onTap: (){
              Navigator.of(context).pushNamed(ProductScreen.routename);
            },
          ),
          ListTile(
            leading: Icon(Icons.add_shopping_cart, color: Colors.blue),
            title: Text("Agregar Productos"),
            onTap: (){
              Navigator.of(context).pushNamed("#");
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart, color: Colors.blue),
            title: Text("Lista de pedidos"),
            onTap: (){
              Navigator.of(context).pushNamed(ShoppingCar.routename);
            },
          ),
          ListTile(
            leading: Icon(Icons.person, color: Colors.blue),
            title: Text("Mi Perfil"),
          ),
        ]
      ),      
    );
  }
}