import 'dart:collection';

main(List<String> args) {
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
}

enum Semaforo { rojo, ambar, verde }
