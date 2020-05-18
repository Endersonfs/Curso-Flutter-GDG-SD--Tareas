import 'package:Tienda/modal/productBloc.dart';
import 'package:Tienda/modal/shopcar.dart';
import 'package:Tienda/widget/app_drower.dart';
import 'package:flutter/material.dart';

class ShoppingCar extends StatefulWidget {
   static const routename ="shoppingcar";
  ShoppingCar({Key key}) : super(key: key);

  @override
  _ShoppingCarState createState() => _ShoppingCarState();
}

class _ShoppingCarState extends State<ShoppingCar> {
  final ProductBloc _listaCantidad = ProductBloc();
  @override
  void dispose(){
    super.dispose();
    _listaCantidad.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text("Mi lista de pedidos"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){
            
          })
        ],
      ),
      body: Container(
        child: StreamBuilder<List<ShopCar>>(
          stream: _listaCantidad.shopCarListStream,
          builder: (BuildContext context, AsyncSnapshot<List<ShopCar>> snapshot){
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index){
                return Card(
                  elevation: 45.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20.0),
                        child:Column(
                          children: <Widget>[
                             Text("${snapshot.data[index].name}",
                        style: TextStyle(fontSize: 16.0)),
                          ],)                      
                      ),
                      Container( //bloque de precio y cantidad de producto
                        padding: EdgeInsets.all(20.0),
                        child: Column(children:<Widget> [
                          Text("${snapshot.data[index].price}",
                        style: TextStyle(fontSize: 20.0),                        
                      ),
                      Text("Stock: ${snapshot.data[index].cantidad}",
                        style: TextStyle(fontSize: 14.0),                        
                      ),
                        ]),
                         
                     
                      ),
                      Container(  //bloque para los botones 
                        child: Row(
                          children: <Widget>[
                            // IconButton(icon:Icon(Icons.remove_circle, color: Colors.pink, size: 30.0),onPressed:(){
                            //  _listaCantidad.shopCarDisminuisListSink.add(snapshot.data[index]);
                            // } ,),
                            IconButton(icon:Icon(Icons.add_circle, color: Colors.green, size: 30.0),onPressed:(){
                             _listaCantidad.shopCarAumentoListSink.add(snapshot.data[index]);
                            } ,),
                          ],
                        )
                      ), 
                      // Container(  //bloque para los botones 
                      //   child: IconButton(icon:Icon(Icons.remove_circle, color: Colors.pink, size: 30.0),onPressed:(){} ,),                          
                            
                            
                      // ),                     
                    ],
                  ),
                );
              }
            );
          },
          )
        ),
      drawer: AppDrower(),
    );
  }
}