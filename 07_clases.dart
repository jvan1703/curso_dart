import 'clases/persona.dart';

main(List<String> args) {
  Persona persona = new Persona();
  persona.nombre = 'Juan';
  persona.edad = 25;
  //persona.bio = 'Bio';

  print(persona);

  Persona persona2 = Persona();
  persona2
    ..nombre = 'Leonardo'
    ..edad = 26;
  //..bio = 'Bio Leo';

  print(persona2.bio);
}
