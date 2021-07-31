main(List<String> args) {
  // numero entero
  int entero = 10;
  print(entero);

  // numero decimal
  double decimal = 15.5;
  print(decimal);

  // Cadena de texto
  String cadena = 'Hola Mundo';
  String cadena2 = "Hola";
  String cadenaMultilinea = '''
    Cadena 
    multilinea
    $cadena
  ''';

  print(cadena);
  print(cadena2);
  print(cadenaMultilinea);

  // Boleanos (true, false)
  bool boleano = true;
  bool? boleano2 = !boleano;

  print(boleano);
  print(boleano2);

  // Listados
  var lista = [1, 2, 3, 4];
  List<String> listaCadenas = ['Hola', 'Mundo', 'Dart'];

  print(lista);
  print(listaCadenas[1]);

  // Sets (pareceido a las listas pero sin duplicados)
  var unset = {1, 2, 3, 4, 5, 5, 5, 5};
  Set<String> unSetCadena = {'Hola', 'Mundo', 'Hola', 'Hola'};
  unSetCadena.add('Hola');
  unSetCadena.add('Mundo');
  unSetCadena.add('Nuevo');

  print(unset.toList());
  print(unSetCadena);

  // Mapas
  var mapa = {"cod": 1, "descripcion": "Nuevo"};
  Map<String, dynamic> mapa2 = {
    'codigo': 2,
    'descripcion': 'Mapa descripcion',
    'estado': 'Activo',
  };

  print(mapa);
  print(mapa2['estado']);
  print(mapa.keys.toList());
}
