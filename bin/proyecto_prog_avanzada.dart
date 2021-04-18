import 'dart:io';

import 'package:proyecto_prog_avanzada/proyecto_prog_avanzada.dart' as fn;

void main(List<String> arguments) {
  print('Prueba de lado lógico de Proyecto de Avanzada!');
  stdout.writeln('Probando función de BubbleSort');

  // fn.calculaTiempo(() {
  //   fn.fibonacciIterativo(90);
  // });
  print('----------------');
  var vector = fn.llenarVectorEnteros(30);
  print(vector);
  fn.bubbleSort(vector);
  print(vector);
}
