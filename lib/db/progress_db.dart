import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
// import 'package:sqflite_database_example/pages/stats/stats.dart';

class ProgressDB {
  static final ProgressDB instance = ProgressDB._init();

  static Database? _database;

  ProgressDB._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('progress.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = 'TEXT NOT NULL';
    final intType = 'INTEGER NOT NULL';

    await db.execute('''