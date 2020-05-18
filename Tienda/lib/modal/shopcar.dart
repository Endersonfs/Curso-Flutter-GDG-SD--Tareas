class ShopCar
{
  int id;
  String name;
  double price;
  int cantidad;

  ShopCar(
    this.id,
    this.name,
    this.price,
    this.cantidad,
  );//final del metodo contructo

  // metodos setter
  set ids(int ids){
    this.id = ids;
  }
  set names(String names){
    this.name =names;
  }
  set prices(double prices){
    this.price = prices;
  }
  set cantidads(int cantidads){
    this.cantidad = cantidads;
  }
  // metodos getter
  int get ids => this.id;
  String get names => this.name;
  double get prices => this.price;
  int get canditads => this.cantidad;


}//final de la clase