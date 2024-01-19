import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/_plats.dart';
import '../models/_commandeplat.dart';
import '../models/_client.dart';
import '../models/_commande.dart';

class DataBaseHelper{
  static final DataBaseHelper instance = DataBaseHelper._init();
  static Database? _database;

  DataBaseHelper._init();

  Future<Database> get database async {
    if (_database != null){
      return _database!;
    }
    _database = await _initDB('trauteyr.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async{
    final dbPath = await getDatabasesPath();
    final path =join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async{
    await db.execute('''
    CREATE TABLE plat(
      id INT PRIMARY KEY AUTOINCREMENT,
      nom TEXT NOT NULL,
      description TEXTE NOT NULL,
      prix REAL NOT NULL,
    )
    ''');

    await db.execute('''
      CREATE TABLE client(
      clientid INT PRIMARY KEY AUTOINCREMENT,
      nom TEXT NOT NULL,
      prenom TEXTE NOT NULL,
      email TEXTE NOT NULL,
      adresse TEXTE NOT NULL,
    )
''');

    await db.execute('''
      CREATE TABLE commandes(
      id INT PRIMARY KEY AUTOINCREMENT,
      client_id INT PRIMARY KEY AUTOINCREMENT,
      date TEXT NOT NULL,
      total REAL NOT NULL
      FOREIGN KEY (client_id) REFERENCES clients (id)
    )
''');

    await db.execute('''
      CREATE TABLE commandeplat(
      id INT PRIMARY KEY AUTOINCREMENT,
      commande_id INT PRIMARY KEY AUTOINCREMENT,
      plat_id INT PRIMARY KEY AUTOINCREMENT,
      FOREIGN KEY (commande_id) REFERENCES commandes (id),
      FOREIGN KEY (plat_id) REFERECENS plats (id),
    )
''');

  }

    //CRUD de plat CREATE / READE / UPDATE /DELETE

  //C
Future<Plats> createPlat(Plats plat) async{
  final db = await database;
  final id = await db.insert('plats', plat.toMap());
  return Plats(
    id:id,
    nom: plat.nom,
    description: plat.description,
    image: plat.image,
    prix: plat.prix,
  );

}


  //R
  Future<Plats?> readPlat(int id) async{
    //SELECT * FROM plats WHERE id = id
    final db = await database;
    final maps = await db.query(
      'plats',
      columns: ['id', 'nom', 'description','image','prix'],
      where: 'id = ?',
      whereArgs: [id],
    );
    if(maps.isNotEmpty){
      return Plats.fromMap(maps.first);
    }else{
      return null;
    }

  }
//U
  Future<int> updatePlat(Plats plats) async{
    final db = await database;
    return db.update(
      'plats',
      plats.toMap(),
      where: 'id = ?',
      whereArgs: [plats.id],
    );
  }


  //D
  Future<int> deletePlat(int id) async{
    final db = await database;
    return await db.delete(
      'plat',
      where: 'id = ?',
      whereArgs: [id],
    );
  }


  //Fermutre de la BDD
  Future closeBdd() async{
    final db = await instance.database;
    db.close();
  }

}
