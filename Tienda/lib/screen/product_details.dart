import 'package:flutter/material.dart';

class ProducDetails extends StatelessWidget {
  static const String routename ="producdetails";
  // ProducDetails();
  @override
  Widget build(BuildContext context) {

    final String productName = ModalRoute.of(context).settings.arguments as String;  

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children :<Widget>[
            Icon(Icons.shopping_basket),
            SizedBox(width: 20),
            Text("Detalles de producto")
          ]
        ) 
      ),
      body: Center(
        child: Text(productName, style: TextStyle(fontSize: 30,),),
        
      )
    );
  }
}