import 'dart:io';

import 'dart:math';

double calculaTiempo(Function function) {
  var comienzo = new DateTime.now();
  function();

  var termina = new DateTime.now();

  stdout.writeln('------------------------');
  print('Comienzo: ' + comienzo.toString());
  print('Termina: ' + termina.toString());
  stdout.writeln('------------------------');

  stdout.writeln('Diferencia en Microsegundos: ' +
      termina.difference(comienzo).inMicroseconds.toString());
  stdout.writeln('Diferencia en Milisegundos: ' +
      termina.difference(comienzo).inMilliseconds.toString());
  stdout.writeln('Diferencia en Segundos: ' +
      termina.difference(comienzo).inSeconds.toString());
}

void fibonacciIterativo(int limite) {
  var vec = [];
  vec.add(0);
  vec.add(1);
  for (int i = 0; i <= limite; i++) {
    print(vec[i]);
    vec.add(vec[i] + vec[i + 1]);
  }
}

int fibonacciRecursivo(int limite) {
  if (limite > 2) {
    return limite;
  } else {
    return fibonacciRecursivo(limite - 1) + fibonacciRecursivo(limite - 2);
  }
}

int posicionPascalR(int i, int j) {
  if (j == 1) {
    return 1;
  } else if (i == j) {
    return 1;
  } else {
    return posicionPascalR(i - 1, j - 1) + posicionPascalR(i - 1, j);
  }
}

List<int> llenarVectorEnteros(int maxElementos) {
  //  Regresa un vector del tamaño de maxElementos con randoms
  List<int> resul = List.filled(0, 0, growable: true);
  for (var i = 0; i < maxElementos; i++) {
    resul.insert(i, Random().nextInt(15) + 1);
  }
  return resul;
}

int superH(int n) {
  //no fununcia chido por el momento ****************
  String o = 'A', a = 'B', d = 'C';
  if (n == 1) {
    print('Disco: ' + n.toString());
    print('de: ' + o);
    print('a: ' + d);
    print('----------------');
  } else {
    superH(n - 1);
    print('Disco: ' + n.toString());
    print('de: ' + o);
    print('a: ' + a);
    print('----------------');
    superH(n - 1);
  }
}

int factorialIterativo(int x) {
  int res = 1;
  for (var i = x; i > 0; i--) {
    res *= i;
  }
  return res;
}

int factorialRecursivo(int x) {
  if (x == 1) {
    return x;
  } else {
    x = x * factorialRecursivo(x - 1);
  }
}

void bubbleSort(List<int> vector) {
  int temp;
  for (var i = 0; i < vector.length; i++) {
    for (var j = 0; j < vector.length - 1; j++) {
      if (vector[j] > vector[j + 1]) {
        temp = vector[j];
        vector[j] = vector[j + 1];
        vector[j + 1] = temp;
      }
    }
  }
}

int particionOrdena(List<int> vector, int pivote, int r) {
  int x = vector[r];
  int i = pivote - 1;
  int temp = 0;
  for (var j = 0; j <= r - 1; j++) {
    if (vector[j] <= x) {
      i = i + 1;
      temp = vector[i];
      vector[i] = vector[j];
      vector[j] = temp;
    }
  }
  temp = vector[i + 1];
  vector[i + 1] = vector[r];
  vector[r] = temp;
  return i + 1;
}

void quickSort(List<int> vector, int p, int r) {
  int q;
  if (p < r) {
    q = particionOrdena(vector, p, r);
    quickSort(vector, p, q - 1);
    quickSort(vector, q + 1, r);
  }
}
