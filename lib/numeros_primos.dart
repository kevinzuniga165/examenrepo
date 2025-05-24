List<int> obtenerNumerosPrimos(int inicio, int fin) {
  List<int> primos = [];
  for (int n = inicio; n <= fin; n++) {
    if (esPrimo(n)) {
      primos.add(n);
    }
  }
  return primos;
}

bool esPrimo(int numero) {
  if (numero <= 1) return false;
  if (numero == 2) return true;
  if (numero % 2 == 0) return false;
  for (int i = 3; i * i <= numero; i += 2) {
    if (numero % i == 0) return false;
  }
  return true;
}

