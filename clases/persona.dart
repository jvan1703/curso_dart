class Persona {
  // Campos o propiedades
  String? nombre;
  int? edad;
  String? _bio = '';

  Persona() {
    print('Constructor');
  }

  //Getters y Setters
  String? get bio {
    return _bio;
  }

  @override
  String toString() {
    return '$nombre $edad $_bio';
  }
}
