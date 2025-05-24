double suma(double a, double b) => a + b;
double resta(double a, double b) => a - b;
double multiplicacion(double a, double b) => a * b;
double division(double a, double b) {
  if (b == 0) {
    throw Exception("División por cero no permitida.");
  }
  return a / b;
}

