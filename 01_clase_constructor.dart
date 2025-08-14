void main() {
  
  Persona p = new Persona('william', 'marrugo', 21, 123456789,'nose@gmail.com');
  Animal a = new Animal(raza:'perro',propietario:'william',fecha_nacimiento:'01/01/01', vacunas:200);
  
  @override
  String toString() {
    return 'este es un mensaje personalizado';
  }

}



class Persona{
  String nombre = '';
  String apellido = '';
  int edad = 0;
  int telefono = 0;
  String email = '';
    
  Persona(String nombre, String apellido, int edad, int telefono, String email){
    this.nombre = nombre;
    this.apellido = apellido;
    this.edad = edad;
    this.telefono = telefono;
    this.email = email;
  }
  
}



class Animal{
  String raza = '';
  String propietario = '';
  String fecha_nacimiento = '';
  int vacunas = 0;
  
  Animal({required this.raza, required this.propietario, required this.fecha_nacimiento, required this.vacunas}){
    print('este perro pertenece a '+ propietario);
  }
}
