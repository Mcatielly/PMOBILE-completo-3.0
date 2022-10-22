import 'package:path/path.dart';

import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String databasesPath = await getDatabasesPath();
    String databaseName = join(databasesPath, 'pacotes.db');
    var db = await openDatabase(
      databaseName,
      version: 1,
      onCreate: onCreate,
    );

    print(databaseName);
    return db;
  }

  onCreate(Database db, int version) async {
    String sql =
        'CREATE TABLE package (id INTEGER PRIMARY KEY, text varchar(100), top varchar(100), bottom varchar(100), left varchar(100), right varchar(100), containerSize varchar(300), url_image varchar(100));';
    await db.execute(sql);

    sql =
        "INSERT INTO package (id, text, top, bottom, left, right, url_image) VALUES (1, 'UNIDADES MÉDICAS DE REDE PÚBLICA', '8',  '0', '135', '1', '250', 'lib/assets/images/card1.png');";
    await db.execute(sql);

    sql =
        "INSERT INTO package (id, text, top, bottom, left, right, url_image) VALUES (2, 'UNIDADES MÉDICAS DE REDE PRIVADA', '30',  '1',  '15', '205','200','lib/assets/images/card2.png');";
    await db.execute(sql);

    sql =
        "INSERT INTO package (id, text, top, bottom, left, right, url_image) VALUES (3, 'UNIDADES FARMACÊUTICAS', '80',  '2',  '200', '1', '200', 'lib/assets/images/card3.png');";
    await db.execute(sql);

    sql =
        "INSERT INTO package (id, text, top, bottom, left, right, url_image) VALUES (4, 'INSTITUIÇÕES ESPECIALIZADAS EM EXAMES CLÍNICOS', '28', '2',  '180', '1', '200', 'lib/assets/images/card4.png');";
    await db.execute(sql);

    sql =
        "INSERT INTO package (id, text, top, bottom, left, right, url_image) VALUES (5, 'INSTRUÇÕES CONTRA COVID-19', '12',  '5',  '180', '1','200','lib/assets/images/card5.png');";
    await db.execute(sql);
  }
}
