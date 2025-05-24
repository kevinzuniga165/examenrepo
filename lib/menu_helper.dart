import 'dart:io';
import 'operaciones_basicas.dart';
import 'numeros_primos.dart';
import 'pares_impares.dart';
// ignore: unused_import
import 'fibonacci.dart';
import 'areas_geometricas.dart';
import 'validaciones.dart';
import 'utilidades.dart';

void mostrarMenuPrincipal() {
  while (true) {
    print("===== CALCULADORA MATEMÁTICA AVANZADA =====");
    print("1. Suma");
    print("2. Resta");
    print("3. Multiplicación");
    print("4. División");
    print("5. Números Primos en un Rango");
    print("6. Números Pares e Impares en un Rango");
    print("7. Secuencia de Fibonacci");
    print("8. Cálculo de Áreas Geométricas");
    print("9. Salir");
    print("===========================================");
    stdout.write("Seleccione una opción (1-9): ");

    String? opcion = stdin.readLineSync();
    if (opcion == '9') break;

    switch (opcion) {
      case '1':
        realizarOperacionBasica(suma);
        break;
      case '2':
        realizarOperacionBasica(resta);
        break;
      case '3':
        realizarOperacionBasica(multiplicacion);
        break;
      case '4':
        realizarOperacionBasica(division);
        break;
      case '5':
        calcularNumerosPrimos();
        break;
      case '6':
        clasificarParesImpares();
        break;
      case '7':
        generarFibonacci();
        break;
      case '8':
        calcularAreasGeometricas();
        break;
      default:
        print("Opción no válida.");
    }
  }
}

void realizarOperacionBasica(Function operacion) {
  stdout.write("Ingrese el primer número: ");
  double a = double.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el segundo número: ");
  double b = double.parse(stdin.readLineSync()!);
  double resultado = operacion(a, b);
  mostrarResultado("Resultado: $resultado");
}

void calcularNumerosPrimos() {
  stdout.write("Ingrese el número inicial del rango: ");
  int inicio = int.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el número final del rango: ");
  int fin = int.parse(stdin.readLineSync()!);

  if (!validarRango(inicio, fin)) {
    mostrarResultado("Rango inválido.");
    return;
  }

  List<int> primos = obtenerNumerosPrimos(inicio, fin);
  mostrarResultado("Números primos encontrados: ${primos.join(', ')}");
}

void clasificarParesImpares() {
  stdout.write("Ingrese el número inicial del rango: ");
  int inicio = int.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el número final del rango: ");
  int fin = int.parse(stdin.readLineSync()!);

  if (!validarRango(inicio, fin)) {
    mostrarResultado("Rango inválido.");
    return;
  }

  List<int> pares = obtenerPares(inicio, fin);
  List<int> impares = obtenerImpares(inicio, fin);
  mostrarResultado("Números pares: ${pares.join(', ')}");
  mostrarResultado("Números impares: ${impares.join(', ')}");
}

void generarFibonacci() {
  stdout.write("¿Cuántos términos desea generar?: ");
  int n = int.parse(stdin.readLineSync()!);

  if (n <= 0) {
    mostrarResultado("Número de términos debe ser mayor que 0.");
    return;
  }

  List<int> secuencia = generarFibonacci(n);
  mostrarResultado("Secuencia de Fibonacci: ${secuencia.join(', ')}");
}

void calcularAreasGeometricas() {
  print("--- CÁLCULO DE ÁREAS GEOMÉTRICAS ---");
  print("1. Círculo");
  print("2. Rectángulo");
  print("3. Triángulo");
  print("4. Cuadrado");
  stdout.write("Seleccione una figura (1-4): ");

  String? figura = stdin.readLineSync();
  switch (figura) {
    case '1':
      stdout.write("Ingrese el radio: ");
      double radio = double.parse(stdin.readLineSync()!);
      double area = areaCirculo(radio);
      mostrarResultado("Área del círculo: $area");
      break;
    case '2':
      stdout.write("Ingrese la base: ");
      double base = double.parse(stdin.readLineSync()!);
      stdout.write("Ingrese la altura: ");
      double altura = double.parse(stdin.readLineSync()!);
      double areaRect = areaRectangulo(base, altura);
      mostrarResultado("Área del rectángulo: $areaRect");
      break;
    case '3':
      stdout.write("Ingrese la base: ");
      double baseTri = double.parse(stdin.readLineSync()!);
      stdout.write("Ingrese la altura: ");
      double alturaTri = double.parse(stdin.readLineSync()!);
      double areaTri = areaTriangulo(baseTri, alturaTri);
      mostrarResultado("Área del triángulo: $areaTri");
      break;
    case '4':
      stdout.write("Ingrese la longitud del lado: ");
      double lado = double.parse(stdin.readLineSync()!);
      double areaCuad = areaCuadrado(lado);
      mostrarResultado("Área del cuadrado: $areaCuad");
      break;
    default:
      mostrarResultado("Opción no válida.");
  }
}
