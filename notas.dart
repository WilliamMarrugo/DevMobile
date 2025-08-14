import 'dart:io';

void main(){
   // actividad de practiva 
  double n1, n2, n3;
  
  stdout.write('por favor digita la nota 1');
  n1 = double.Parse(stdin.readLineSync() ?? '');

  stdout.write('por favor digita la nota 2');
  n2 = double.Parse(stdin.readLineSync() ?? '');

  stdout.write('por favor digita la nota 3');
  n3 = double.Parse(stdin.readLineSync() ?? '');
 
  double suma = (n1 * 0.3)+(n2 * 0.3)+(n3 * 0.4);
  
  String corte = (suma > 3.0) ? "aprovaste el curso con $suma" : "reprovaste con $suma" ;  
  print(corte);

}
