void main() {
  Auto auto = Auto(propietario: "william", name:"automovil");
  auto.rodar();
  
  Barco barco = Barco();
  barco.flotar();
  
  Avion avion = Avion();
  avion.volar();
}

abstract class Vehiculo{ 
  String name;
  
  Vehiculo({required this.name});
  
}

abstract class Tierra extends Vehiculo{ 
  Tierra({required String name}):
    super(name: "");
  
}

abstract class Agua extends Vehiculo{
  Agua({required String name}):
    super(name: "");
}

abstract class Aire extends Vehiculo{
  Aire({required String name}):
    super(name: "");
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
  Auto({required this.propietario, required String name});
}

class Moto extends Vehiculo with Terrestre {
  String propietario;
  Moto({required this.propietario, required String name});
}

class Bus extends Vehiculo with Terrestre {
  String propietario;
  Bus({required this.propietario, required String name});
}

class Barco extends Vehiculo with Acuatico {}
class Submarino extends Vehiculo with Acuatico {}

class Anfibio extends Vehiculo with Terrestre, Acuatico {}
class Avion extends Vehiculo with Terrestre, Aereo {}
class Hidroavion extends Vehiculo with Terrestre, Acuatico, Aereo {}
