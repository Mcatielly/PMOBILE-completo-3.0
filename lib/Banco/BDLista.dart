import 'package:flutter_application_1/Domain/phones.dart';

//FEITO POR RENATA RENES

class BDLista {
  static List<Phones> lista = [
    Phones(
      text: 'Direitos Humanos',
      numero: 100,
    ),
    Phones(
      text: 'Centro de Velorização a Vida',
      numero: 180,
    ),
    Phones(
      text: 'Disque Denúncia',
      numero: 181,
    ),
    Phones(
      text: 'Polícia Militar',
      numero: 190,
    ),
    Phones(
      text: 'Ambulância Pública (SAMU)',
      numero: 192,
    ),
    Phones(
      text: 'Corpo de Bombeiros',
      numero: 193,
    ),
    Phones(
      text: 'Polícia Civil',
      numero: 197,
    ),
    Phones(
      text: 'Polícia Rodoviária Estadual',
      numero: 198,
    ),
    Phones(
      text: 'Defesa Civil',
      numero: 199,
    ),
  ];

  static Future<List<Phones>> getValues() async {
    await Future.delayed(const Duration(seconds: 10));
    return lista;
  }
}
