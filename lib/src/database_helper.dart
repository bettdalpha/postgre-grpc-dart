import 'package:postgres/postgres.dart';
import 'package:latlong/latlong.dart';

class DatabaseHelper {
    //final connection = PostgreSQLConnection('localhost', 5433, 'nairobi',username: 'postgres',password: 'alliswell');
    PostgreSQLConnection _connection;
    DatabaseHelper(this._connection);
    
    Future<bool> openConnection() async {
      await _connection.open();
      if(_connection.isClosed){
        return false;
      }
      return true; 
    }

    Future<List<dynamic>> getBankById(int id) async{
        List<List<dynamic>> results = await _connection.query("SELECT id,name,street,St_astext(geom) from banks where id = @aValue limit 1",substitutionValues: {
            "aValue" : id 
        });
        return results;
    }

}

class Bank {
  final String name,street;
  final int bankId;
  final LatLng coords;

  Bank({this.bankId,this.name,this.street,this.coords});

  factory Bank.fromJson(List<dynamic> json){
        var id,name,street;
        String geom;

        for (var item in json) {
          id = item[0];
          name = item[1];
          street = item[2]==null ? "Unknown Street" : item[2];
          geom = item[3];
        }
    var lat = double.parse(geom.substring((geom.indexOf('(')+1),geom.indexOf(' ')));
    var lon = double.parse(geom.substring(geom.indexOf(' '),geom.indexOf(')')));

    return Bank(
        name: name,
        street: street,
        coords: LatLng(lat, lon),
        bankId: id
    );
  }
  String toString() {
    return "$bankId\t$name\t$street\t$coords";
  }
}

