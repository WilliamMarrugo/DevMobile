void main() {
  Auto auto = Auto(propietario: "william");
  auto.rodar();
  
  Barco barco = Barco();
  barco.flotar();
  
  Avion avion = Avion();
  avion.volar();
}

abstract class Vehiculo{ 
}

abstract class Tierra extends Vehiculo{ 
}

abstract class Agua extends Vehiculo{
}

abstract class Aire extends Vehiculo{
}

mixin Terrestre {
  
  void rodar() {
    print('puede rodar por la tierra, recorriendo las distancias');
  }
}

mixin Acuatico {
  void flotar() {
    print('se esta sosteniendo sobre el agua, listo para surcar los mares');
  }
}

mixin Aereo {
  void volar() {
    print('se desplaza por los cielos, a punto de conquistar el mundo');
  }
}

class Auto extends Vehiculo with Terrestre {
  String propietario;
  Auto({required this.propietario});
}

class Moto extends Vehiculo with Terrestre {
  String propietario;
  Moto({required this.propietario});
}

class Bus extends Vehiculo with Terrestre {
  String propietario;
  Bus({required this.propietario});
}

class Barco extends Vehiculo with Acuatico {}
class Submarino extends Vehiculo with Acuatico {}

class Anfibio extends Vehiculo with Terrestre, Acuatico {}
class Avion extends Vehiculo with Terrestre, Aereo {}
class Hidroavion extends Vehiculo with Terrestre, Acuatico, Aereo {}
