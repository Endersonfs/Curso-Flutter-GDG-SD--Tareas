import 'package:Tienda/widget/app_drower.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routename ="/"; // pagina inicial 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text("Mi Tienda"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){})
        ],
      ),
      body: Center(
        child: Text('Cuerpo de la tienda'),
      ),
      drawer: AppDrower(),
    );
  }
}