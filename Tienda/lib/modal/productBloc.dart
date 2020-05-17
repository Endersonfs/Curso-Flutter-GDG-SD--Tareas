// importaciones
import 'dart:async';
import 'package:Tienda/modal/shopcar.dart';
//Lista de pedidos
class ProductBloc{
List<ShopCar> _productList = [
  ShopCar(1,'Barra Amigo',200.00,1),
  ShopCar(2,'Correa1',140.00,1),
  ShopCar(3,'Zapato',350.00,1),
  ShopCar(4,'Especialidad ES023',150.00,1),
  ShopCar(5,'Triangulo',15.00,1),
  ShopCar(6,'Globo',25.00,1),
  ShopCar(7,'Arco',25.00,1),
  ShopCar(8,'Anillo',15.00,1),
  ShopCar(9,'Panuelo',250.00,1),
  ShopCar(10,'Carpa',1500.00,1),
  ShopCar(11,'Soga 1P',10.00,1),
];
//Stream Controller
 //mostrar prucdor
 final _listaPedidosStreamController = StreamController<List<ShopCar>>();
 //aumentar producto
 final _aumentoPedidoStreamController = StreamController<ShopCar>();
 //disminuir producto
 final _disminuirPedidosStreamController = StreamController<ShopCar>();
//Stream Sink getter
Stream <List<ShopCar>> get shopCarListStream => _listaPedidosStreamController.stream;

StreamSink <List<ShopCar>> get shopCarListSink => _listaPedidosStreamController.sink;
StreamSink <ShopCar> get shopCarAumentoListSink => _aumentoPedidoStreamController.sink;
StreamSink <ShopCar> get shopCarDisminuisListSink => _disminuirPedidosStreamController.sink;

//Constructor - Anadir data escuchar cambios
ProductBloc (){
  _listaPedidosStreamController.add(_productList);
  _aumentoPedidoStreamController.stream.listen(_aumentarLista);
  _disminuirPedidosStreamController.stream.listen(_diminuirLista);
}
//Funciones principales
_aumentarLista(ShopCar shopCar){
  int cantidadActual = shopCar.cantidad;
  int cantidadAumento = cantidadActual++;
 _productList[shopCar.id - 1].cantidad = cantidadActual+ cantidadAumento;
 shopCarListSink.add(_productList);
}
_diminuirLista(ShopCar shopCar){
  int cantidadActual =shopCar.cantidad;
  int cantidadDisminuir = cantidadActual--;
  _productList[shopCar.id -1].cantidad = cantidadActual - cantidadDisminuir;
}
//dispose
void dispose(){
  _aumentoPedidoStreamController.close();
  _disminuirPedidosStreamController.close();
  _listaPedidosStreamController.close();
}
}


