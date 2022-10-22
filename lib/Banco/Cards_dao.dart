import 'package:flutter_application_1/Banco/bd_helper.dart';
import 'package:flutter_application_1/Domain/Cards.dart';
import 'package:sqflite/sqflite.dart';

//import 'package:flutter_application_1/Pages/PrincipalPage.dart';
class CardsDao {
  Future<List<Cards>> listarPacotes() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM package;';
    var result = await db.rawQuery(sql);

    List<Cards> lista = <Cards>[];
    for (var json in result) {
      Cards card = Cards.fromJson(json);
      lista.add(card);
    }

    return lista;
  }
}
