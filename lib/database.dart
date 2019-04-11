import 'dart:async';
import 'dart:io' as io;
import 'package:expense_manager/model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DBHelper{

  static Database _db;

  Future<Database> get db async {
    if(_db != null)
      return _db;
    _db = await initDb();
    return _db;
  }

  //Creating a database with name test.db in your directory
  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "testdb.db");
    var theDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return theDb;
  }

  // Creating a table name Employee with fields
  void _onCreate(Database db, int version) async {
    // When creating the db, create the table
    await db.execute(
        "CREATE TABLE Expense(id INTEGER PRIMARY KEY AUTOINCREMENT, amount INTEGER, reason TEXT,date TEXT)");
    print("Created tables");
  }

  Future<List> getExpense() async {
    var result = await _db.query("Expense", columns: ["amount", "reason","date"]);
    return result.toList();
  }

  Future<int> addExpense(Expense expense) async {
    var result = await _db.insert("Expense", expense.toJson());
    print(result);
    return result;
  }

}