import 'package:grpc/grpc.dart';
import 'package:postgre/generated/protos.pbgrpc.dart';
import 'package:postgres/postgres.dart';

PostgreSQLConnection connection = PostgreSQLConnection('localhost', 5434, 'nairobi',username: 'docker',password: 'alliswell');

class BankService extends GetBanksServiceBase {
  DBHelper helper;
  BankService(this.helper);

  @override
  Future<Bank> getBank(ServiceCall call, BankId request) async{
    return await helper.getBankById(request.id);
  }
  Future<Bank> getNearestBank(ServiceCall call, LatLng request) async{
    LatLng latLng = LatLng()..lat=request.lat
      ..long=request.long;
    return await helper.getNearestBank(latLng);
  }
  @override
  Future<BankList> getBanksByType(ServiceCall call, BankNameLatLng request) async{
    return await helper.getBanksLike(request);
  }
  @override
  Future<BankList> getNearestBanks(ServiceCall call, LatLngNum request) async {
    return await helper.getNearestBanks(request);
  }

  @override
  Future<InsertResp> insertBank(ServiceCall call, Bank request) async {
    var res = await helper.insertBankToDB(request);
    if(res==1){
      return InsertResp()..resp = "INSERTED";
    }
    return InsertResp()..resp = "ERROR";
  }
}

main(List<String> args) async {
  await connection.open();

  print(connection.isClosed);
  final conn = DBHelper(connection);
  LatLng poi = new LatLng()..lat = -1.3109
  ..long = 36.777;

  var banklike = BankNameLatLng()..loc=poi
      ..name='Co';
  
  var banks = await conn.getBanksLike(banklike);
  for (var item in banks.banks) {
    print(item);
  }

  Server server = new Server([new BankService(conn)]);
  await server.serve(port: 5678);
  print('Server started. \n Listening on port ${server.port}');
  // await connection.close();
}

class DBHelper {
  PostgreSQLConnection _connection;

  DBHelper(this._connection);

  Future<Bank> getBankById(int id) async {
        List<List<dynamic>> results = await _connection.query("SELECT id,name,street,St_astext(geom) from banks where id = @aValue limit 1",substitutionValues: {
            "aValue" : id 
        });
        return bankFromJson(results);
    }
    Future<BankList> getNearestBanks(LatLngNum request) async {
        List<List<dynamic>> results = await _connection.query("SELECT id,name,street,ST_AsText(geom),"
        "ST_SetSRID(ST_makepoint(@long,@lat),4326) <-> geom as distance from banks order by distance limit @lim",substitutionValues: {
          "lat":request.loc.lat,
          "long": request.loc.long,
          "lim":request.num
        });
        List<Bank> banks = [];
        BankList list = BankList();
        for (var item in results) {
          Bank bank = bankFromJsonn(item);
          banks.add(bank);
          print(bank.runtimeType);
        }
        list.banks.addAll(banks);
        return list;
    }

    Future<Bank> getNearestBank(LatLng point) async {
      List<List<dynamic>> results = await _connection.query("SELECT id,name,street,ST_AsText(geom),"
        "ST_SetSRID(ST_makepoint(@long,@lat),4326) <-> geom as distance from banks order by distance limit 1",substitutionValues: {
          "lat":point.lat,
          "long":point.long
        });
        return bankFromJson(results);
    }

    Future<int> insertBankToDB(Bank bank) async {
      var lat = bank.loc.lat;
      var lon = bank.loc.long;
      // insert into banks(name,street,geom) values('Name','Test Street',ST_geomfromtext('MULTIPOINT(36.9 78.9)',4326))
      var geos = "ST_GeomFromText('MULTIPOINT(${lon} ${lat})',4326)";
      print(geos);
      String sql = "INSERT INTO banks(name,street,geom) VALUES(\'${bank.name}\',\'${bank.street}\',$geos)";
      print(sql);
      var res = await _connection.execute(sql);
      print(res);
      return res;
    }
    Future<BankList> getBanksLike(BankNameLatLng bankType) async{
      var lat = bankType.loc.lat;
      var lon = bankType.loc.long;
      var name = bankType.name;
      // insert into banks(name,street,geom) values('Name','Test Street',ST_geomfromtext('MULTIPOINT(36.9 78.9)',4326))
      List<List<dynamic>> results = await _connection.query("SELECT id,name,street,ST_AsText(geom),"
        "ST_SetSRID(ST_makepoint(@long,@lat),4326) <-> geom as distance from banks where name like '%${name}%' order by distance limit 10",substitutionValues: {
          "lat":lat,
          "long":lon
        });
      BankList list = BankList();
      List<Bank> banks = [];
      //var res = await _connection.query(sql);
      for (var item in results) {
        Bank bank = bankFromJsonn(item);
        banks.add(bank);
      }
      list.banks.addAll(banks);
      return list;
    }

    Bank bankFromJson(List<dynamic> json){
      var name,street;
      String geom;

        for (var item in json) {

          name = item[1];
          street = item[2]==null ? "Unknown Street" : item[2];
          geom = item[3];
        }
        var lonn = double.parse(geom.substring((geom.indexOf('(')+1),geom.indexOf(' ')));
        var latt = double.parse(geom.substring(geom.indexOf(' '),geom.indexOf(')')));
        var loc = LatLng()..lat=latt
                  ..long=lonn;

        var bank = new Bank()
          ..name=name
          ..street=street
          ..loc=loc;
      return bank;
    }

    Bank bankFromJsonn(List<dynamic> details){
      var name,street,geom;
      name = details[1];
      street= details[2]==null ? "Unknown Street" : details[2];
      geom = details[3];

      var lonn = double.parse(geom.substring((geom.indexOf('(')+1),geom.indexOf(' ')));
      var latt = double.parse(geom.substring(geom.indexOf(' '),geom.indexOf(')')));
        var loc = LatLng()..lat=latt
                  ..long=lonn;

        var bank = new Bank()
          ..name=name
          ..street=street
          ..loc=loc;
      return bank;
    }

}