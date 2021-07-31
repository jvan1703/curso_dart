import 'dart:async';
import 'dart:collection';

import 'dart:io';

import 'dart:math';

main(List<String> args) async {
  // Colas
  Queue<int> queue = new Queue();
  queue.addAll([1, 2, 3, 4, 5]);
  queue.add(6);
  queue.addFirst(0);
  queue.addLast(10);
  Iterator<int> iterator = queue.iterator;
  while (iterator.moveNext()) {
    print(iterator.current);
  }

  // Enum (Enumeraciones)

  Semaforo semaforo = Semaforo.rojo;

  switch (semaforo) {
    case Semaforo.rojo:
      print('Semaforo en rojo');
      break;
    case Semaforo.ambar:
      print('Semaforo en ambar');
      break;
    case Semaforo.verde:
      print('Semaforo en verde');
      break;
  }

  print(semaforo.toString());

  // futures

  Map<String, dynamic> persona = {
    'codigo': 1,
    'nombre': 'Juan',
    'edad': 25,
    'documento': '12345678',
  };

  Future<Map<String, dynamic>> timeout =
      Future.delayed(Duration(seconds: 3), () {
    print('3 segundos despues');
    return persona;
  });

  timeout.then((value) {
    print("El nombre es " + value['nombre']);
  });

  print("Fin de la prueba futures");

  // Mas future leyendo archivo txt

  File file = new File(Directory.current.path + '/assets/personas.txt');
  // de manera asincrona con future
  Future<String> future = file.readAsString();
  // de manera sincrona con solo un String
  String texto = file.readAsStringSync();

  future.then((value) => print(value));
  print(texto);

  print('Fin de la prueba future con archivos');

  // async y await

  String path = Directory.current.path + '/assets/personas.txt';
  // siempre que se use await la funcion general (en este caso "main") debe estar con un async
  String textoArchivo = await leerArchivo(path);
  print(textoArchivo);

  // catchError de los futures

  Future<String> futureError = Future.delayed(Duration(seconds: 3), () {
    if (1 == 1) {
      //throw 'Exploto';
    }
    return '3 segundos despues';
  });

  futureError.then((value) => print(value)).catchError((error) => print(error));

  // Streams

  final streamController = StreamController();
  streamController.stream.listen((data) {
    print("despegando $data");
  }, onError: (err) {
    print(err);
  }, onDone: () {
    print('Completado, Close');
  }, cancelOnError: true);
  streamController.sink.add('Apollo 11');
  print('fin de la prueba stream');

  // streams con metodos onError, onDone, cancelOnError

  streamController.sink.add('Apollo 12');
  //streamController.sink.addError('Tenemos un error');
  streamController.sink.add('Apollo 13');
  streamController.sink.close();

  // Stream tipado y broadcast
  // el tipado se define en el <T> y el brodcast es para tener el Stream multiple.

  final StreamController<String> streamControllerTipadoMultiple =
      new StreamController<String>.broadcast();
  streamControllerTipadoMultiple.stream.listen((event) {
    print('Mostrar data $event');
  }, onError: (err) {
    print('Hay un error: $err');
  }, onDone: () {
    print('Terminado, close');
  }, cancelOnError: true);

  streamControllerTipadoMultiple.stream.listen((event) {
    print('Mostrar data 2 $event');
  }, onError: (err) {
    print('Hay un error 2: $err');
  }, onDone: () {
    print('Terminado 2, close');
  }, cancelOnError: true);

  streamControllerTipadoMultiple.add('Cadena uno');
  streamControllerTipadoMultiple.close();
}

// el async convierte cualquier retorno de funcion a un Future<objeto retorno>
Future<String> leerArchivo(String path) async {
  File file = new File(path);
  return file.readAsStringSync();
}

enum Semaforo { rojo, ambar, verde }
