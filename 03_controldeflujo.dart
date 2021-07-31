import 'dart:math';

main(List<String> args) {
  // if , else

  int edad = 18;

  if (edad >= 18) {
    print('Eres mayor de edad');
  } else {
    print('Eres menor de edad');
  }

  // ciclo for

  int veces = 10;

  cliclofor:
  for (var i = 0; i < veces; i++) {
    if (i == 2) break cliclofor;

    print('Imprime $i veces');
  }

  // ciclo for in

  List<String> listaCadena = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  for (String cadena in listaCadena) {
    print(cadena);
  }

  // ciclo while

  int contador = 1;

  while (contador <= 10) {
    print('contador es igual a $contador');
    contador++;
  }

  // cilco do while (por lo menos entra una vez)

  contador = 1;

  do {
    print('el contador es $contador');
    contador++;
  } while (contador < 1);

  // switch

  int randon = Random().nextInt(6);

  switch (randon) {
    case 0:
      print('$randon es cero');
      break;

    case 1:
      print('$randon es uno');
      break;
    default:
      print('$randon es otro numero');
      break;
  }
}
