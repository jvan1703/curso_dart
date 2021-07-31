main(List<String> args) {
  saludar('Juan', 'Anton');
  repetir('Hola', veces: 4, emoticono: '💰');
  print(suma(1, 1));

  insertar(true, (mensaje, otro) {
    print(mensaje);
    print(otro);
  }, (String error) {
    print(error);
  });
}

// funcion basica con parametros pocicionales

void saludar(String nombre, String apellido) {
  print('Hola $nombre $apellido');
}

// funcion basica con parametro con nombre

void repetir(String cadena, {int veces = 1, String emoticono = '😎'}) {
  for (var i = 0; i < veces; i++) {
    print('la cadena: $cadena se repite $veces con un emoticono $emoticono');
  }
}

// funciones lambda

int suma(int numero1, int numero2) => numero1 + numero2;

// Callbacks

void insertar(bool isActive, Function onSuccess, Function onFail) {
  if (isActive) {
    onSuccess("Todo correcto", "Otro mensaje");
  } else {
    onFail("Error por que es falso");
  }
}
