import 'package:postgres/postgres.dart';
import 'src/database_helper.dart';

main(List<String> args) async {      
  final connection = PostgreSQLConnection('localhost', 5433, 'nairobi',username: 'postgres',password: 'alliswell');
  await connection.open();
  DatabaseHelper helper = DatabaseHelper(connection);

  //print("Name\t\tStreet");
  // List<Bank> banks = [];

  for (var i=1;i<15;i++) {
    Bank bank = Bank.fromJson(await helper.getBankById(i));
    print(bank.toString());
    // banks.add(bank);
    // helper.getBankById(i);
    await Future.delayed(Duration(milliseconds: 200));
  }

  await connection.close();
}
