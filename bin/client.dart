
import 'package:grpc/grpc.dart';
import 'package:postgre/generated/protos.pbgrpc.dart';

Future<void> main(List<String> args) async {
  final client = new ClientChannel("docker",
      port: 5678,
      options: const ChannelOptions(
        credentials: const ChannelCredentials.insecure(),
      )
  );
  final stub = GetBanksServiceClient(client);
  LatLng loc = LatLng()..lat=-1.34
  ..long=36.784;
  BankNameLatLng bankType = BankNameLatLng()..name="Co"
  ..loc=loc;
  final latnum = LatLngNum()..loc=loc
  ..num=10;
  var response = await stub.getBanksByType(bankType);
  // var response = await stub.getNearestBanks(latnum);
  for (var bank in response.banks) {
    print(bank);
  }
  // Bank bank = await stub.getBank(BankId()..id=4);
  // print(bank);
  await client.terminate();
}
