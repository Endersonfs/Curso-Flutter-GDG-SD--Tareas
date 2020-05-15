import 'package:Tienda/widget/app_drower.dart';
import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  static const String routename ="perfiluser";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Icon(Icons.person),
            SizedBox(width: 20,),
            Text("Mi Pefil")
          ],
        ),
      ),
      body: Center(
        child: Text("Mis datos personales")
      ),
      drawer: AppDrower(),
    );
  }
}