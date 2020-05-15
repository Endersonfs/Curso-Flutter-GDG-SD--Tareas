import 'package:Tienda/screen/home_screen.dart';
import 'package:Tienda/screen/perfil.dart';
import 'package:Tienda/screen/product_details.dart';
import 'package:Tienda/screen/products_screen.dart';
import 'package:Tienda/screen/shopping_car.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tienda',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       home: HomeScreen(),
        routes: {
          // HomeScreen.routename: (_)=> HomeScreen(),
          ProductScreen.routename: (_)=>ProductScreen(),
          ProducDetails.routename: (_)=>ProducDetails(),
          ShoppingCar.routename: (_)=>ShoppingCar(),
          Perfil.routename: (_)=> Perfil(),
    
        },
    );
  }
}
