List<int> obtenerPares(int inicio, int fin) {
  List<int> pares = [];
  for (int i = inicio; i <= fin; i++) {
    if (i % 2 == 0) {
      pares.add(i);
    }
  }
  return pares;
}

List<int> obtenerImpares(int inicio, int fin) {
  List<int> impares = [];
  for (int i = inicio; i <= fin; i++) {
    if (i % 2 != 0) {
      impares.add(i);
    }
  }
  return impares;
}

