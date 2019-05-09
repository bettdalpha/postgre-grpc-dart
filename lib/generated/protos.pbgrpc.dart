///
//  Generated code. Do not modify.
//  source: protos.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:grpc/service_api.dart' as $grpc;

import 'dart:core' as $core show int, String, List;

import 'protos.pb.dart';
export 'protos.pb.dart';

class GetBanksServiceClient extends $grpc.Client {
  static final _$getBank = $grpc.ClientMethod<BankId, Bank>(
      '/GetBanksService/GetBank',
      (BankId value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => Bank.fromBuffer(value));
  static final _$getNearestBank = $grpc.ClientMethod<LatLng, Bank>(
      '/GetBanksService/GetNearestBank',
      (LatLng value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => Bank.fromBuffer(value));
  static final _$getBanksByType = $grpc.ClientMethod<BankNameLatLng, BankList>(
      '/GetBanksService/GetBanksByType',
      (BankNameLatLng value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => BankList.fromBuffer(value));
  static final _$getNearestBanks = $grpc.ClientMethod<LatLngNum, BankList>(
      '/GetBanksService/GetNearestBanks',
      (LatLngNum value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => BankList.fromBuffer(value));
  static final _$insertBank = $grpc.ClientMethod<Bank, InsertResp>(
      '/GetBanksService/InsertBank',
      (Bank value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => InsertResp.fromBuffer(value));

  GetBanksServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<Bank> getBank(BankId request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getBank, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<Bank> getNearestBank(LatLng request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getNearestBank, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<BankList> getBanksByType(BankNameLatLng request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getBanksByType, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<BankList> getNearestBanks(LatLngNum request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getNearestBanks, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<InsertResp> insertBank(Bank request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$insertBank, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class GetBanksServiceBase extends $grpc.Service {
  $core.String get $name => 'GetBanksService';

  GetBanksServiceBase() {
    $addMethod($grpc.ServiceMethod<BankId, Bank>(
        'GetBank',
        getBank_Pre,
        false,
        false,
        ($core.List<$core.int> value) => BankId.fromBuffer(value),
        (Bank value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<LatLng, Bank>(
        'GetNearestBank',
        getNearestBank_Pre,
        false,
        false,
        ($core.List<$core.int> value) => LatLng.fromBuffer(value),
        (Bank value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<BankNameLatLng, BankList>(
        'GetBanksByType',
        getBanksByType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => BankNameLatLng.fromBuffer(value),
        (BankList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<LatLngNum, BankList>(
        'GetNearestBanks',
        getNearestBanks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => LatLngNum.fromBuffer(value),
        (BankList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<Bank, InsertResp>(
        'InsertBank',
        insertBank_Pre,
        false,
        false,
        ($core.List<$core.int> value) => Bank.fromBuffer(value),
        (InsertResp value) => value.writeToBuffer()));
  }

  $async.Future<Bank> getBank_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return getBank(call, await request);
  }

  $async.Future<Bank> getNearestBank_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return getNearestBank(call, await request);
  }

  $async.Future<BankList> getBanksByType_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return getBanksByType(call, await request);
  }

  $async.Future<BankList> getNearestBanks_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return getNearestBanks(call, await request);
  }

  $async.Future<InsertResp> insertBank_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return insertBank(call, await request);
  }

  $async.Future<Bank> getBank($grpc.ServiceCall call, BankId request);
  $async.Future<Bank> getNearestBank($grpc.ServiceCall call, LatLng request);
  $async.Future<BankList> getBanksByType(
      $grpc.ServiceCall call, BankNameLatLng request);
  $async.Future<BankList> getNearestBanks(
      $grpc.ServiceCall call, LatLngNum request);
  $async.Future<InsertResp> insertBank($grpc.ServiceCall call, Bank request);
}
