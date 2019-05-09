///
//  Generated code. Do not modify.
//  source: protos.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, String;

import 'package:protobuf/protobuf.dart' as $pb;

class InsertResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('InsertResp')
    ..aOS(1, 'resp')
    ..hasRequiredFields = false
  ;

  InsertResp() : super();
  InsertResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  InsertResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  InsertResp clone() => InsertResp()..mergeFromMessage(this);
  InsertResp copyWith(void Function(InsertResp) updates) => super.copyWith((message) => updates(message as InsertResp));
  $pb.BuilderInfo get info_ => _i;
  static InsertResp create() => InsertResp();
  InsertResp createEmptyInstance() => create();
  static $pb.PbList<InsertResp> createRepeated() => $pb.PbList<InsertResp>();
  static InsertResp getDefault() => _defaultInstance ??= create()..freeze();
  static InsertResp _defaultInstance;

  $core.String get resp => $_getS(0, '');
  set resp($core.String v) { $_setString(0, v); }
  $core.bool hasResp() => $_has(0);
  void clearResp() => clearField(1);
}

class BankId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BankId')
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  BankId() : super();
  BankId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  BankId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  BankId clone() => BankId()..mergeFromMessage(this);
  BankId copyWith(void Function(BankId) updates) => super.copyWith((message) => updates(message as BankId));
  $pb.BuilderInfo get info_ => _i;
  static BankId create() => BankId();
  BankId createEmptyInstance() => create();
  static $pb.PbList<BankId> createRepeated() => $pb.PbList<BankId>();
  static BankId getDefault() => _defaultInstance ??= create()..freeze();
  static BankId _defaultInstance;

  $core.int get id => $_get(0, 0);
  set id($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);
}

class BankNameLatLng extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BankNameLatLng')
    ..aOS(1, 'name')
    ..a<LatLng>(2, 'loc', $pb.PbFieldType.OM, LatLng.getDefault, LatLng.create)
    ..hasRequiredFields = false
  ;

  BankNameLatLng() : super();
  BankNameLatLng.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  BankNameLatLng.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  BankNameLatLng clone() => BankNameLatLng()..mergeFromMessage(this);
  BankNameLatLng copyWith(void Function(BankNameLatLng) updates) => super.copyWith((message) => updates(message as BankNameLatLng));
  $pb.BuilderInfo get info_ => _i;
  static BankNameLatLng create() => BankNameLatLng();
  BankNameLatLng createEmptyInstance() => create();
  static $pb.PbList<BankNameLatLng> createRepeated() => $pb.PbList<BankNameLatLng>();
  static BankNameLatLng getDefault() => _defaultInstance ??= create()..freeze();
  static BankNameLatLng _defaultInstance;

  $core.String get name => $_getS(0, '');
  set name($core.String v) { $_setString(0, v); }
  $core.bool hasName() => $_has(0);
  void clearName() => clearField(1);

  LatLng get loc => $_getN(1);
  set loc(LatLng v) { setField(2, v); }
  $core.bool hasLoc() => $_has(1);
  void clearLoc() => clearField(2);
}

class Bank extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Bank')
    ..aOS(1, 'name')
    ..a<LatLng>(2, 'loc', $pb.PbFieldType.OM, LatLng.getDefault, LatLng.create)
    ..aOS(3, 'street')
    ..hasRequiredFields = false
  ;

  Bank() : super();
  Bank.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Bank.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Bank clone() => Bank()..mergeFromMessage(this);
  Bank copyWith(void Function(Bank) updates) => super.copyWith((message) => updates(message as Bank));
  $pb.BuilderInfo get info_ => _i;
  static Bank create() => Bank();
  Bank createEmptyInstance() => create();
  static $pb.PbList<Bank> createRepeated() => $pb.PbList<Bank>();
  static Bank getDefault() => _defaultInstance ??= create()..freeze();
  static Bank _defaultInstance;

  $core.String get name => $_getS(0, '');
  set name($core.String v) { $_setString(0, v); }
  $core.bool hasName() => $_has(0);
  void clearName() => clearField(1);

  LatLng get loc => $_getN(1);
  set loc(LatLng v) { setField(2, v); }
  $core.bool hasLoc() => $_has(1);
  void clearLoc() => clearField(2);

  $core.String get street => $_getS(2, '');
  set street($core.String v) { $_setString(2, v); }
  $core.bool hasStreet() => $_has(2);
  void clearStreet() => clearField(3);
}

class LatLng extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LatLng')
    ..a<$core.double>(1, 'lat', $pb.PbFieldType.OD)
    ..a<$core.double>(2, 'long', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  LatLng() : super();
  LatLng.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  LatLng.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  LatLng clone() => LatLng()..mergeFromMessage(this);
  LatLng copyWith(void Function(LatLng) updates) => super.copyWith((message) => updates(message as LatLng));
  $pb.BuilderInfo get info_ => _i;
  static LatLng create() => LatLng();
  LatLng createEmptyInstance() => create();
  static $pb.PbList<LatLng> createRepeated() => $pb.PbList<LatLng>();
  static LatLng getDefault() => _defaultInstance ??= create()..freeze();
  static LatLng _defaultInstance;

  $core.double get lat => $_getN(0);
  set lat($core.double v) { $_setDouble(0, v); }
  $core.bool hasLat() => $_has(0);
  void clearLat() => clearField(1);

  $core.double get long => $_getN(1);
  set long($core.double v) { $_setDouble(1, v); }
  $core.bool hasLong() => $_has(1);
  void clearLong() => clearField(2);
}

class LatLngNum extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LatLngNum')
    ..a<LatLng>(1, 'loc', $pb.PbFieldType.OM, LatLng.getDefault, LatLng.create)
    ..a<$core.int>(2, 'num', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  LatLngNum() : super();
  LatLngNum.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  LatLngNum.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  LatLngNum clone() => LatLngNum()..mergeFromMessage(this);
  LatLngNum copyWith(void Function(LatLngNum) updates) => super.copyWith((message) => updates(message as LatLngNum));
  $pb.BuilderInfo get info_ => _i;
  static LatLngNum create() => LatLngNum();
  LatLngNum createEmptyInstance() => create();
  static $pb.PbList<LatLngNum> createRepeated() => $pb.PbList<LatLngNum>();
  static LatLngNum getDefault() => _defaultInstance ??= create()..freeze();
  static LatLngNum _defaultInstance;

  LatLng get loc => $_getN(0);
  set loc(LatLng v) { setField(1, v); }
  $core.bool hasLoc() => $_has(0);
  void clearLoc() => clearField(1);

  $core.int get num => $_get(1, 0);
  set num($core.int v) { $_setSignedInt32(1, v); }
  $core.bool hasNum() => $_has(1);
  void clearNum() => clearField(2);
}

class BankList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BankList')
    ..pc<Bank>(1, 'banks', $pb.PbFieldType.PM,Bank.create)
    ..hasRequiredFields = false
  ;

  BankList() : super();
  BankList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  BankList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  BankList clone() => BankList()..mergeFromMessage(this);
  BankList copyWith(void Function(BankList) updates) => super.copyWith((message) => updates(message as BankList));
  $pb.BuilderInfo get info_ => _i;
  static BankList create() => BankList();
  BankList createEmptyInstance() => create();
  static $pb.PbList<BankList> createRepeated() => $pb.PbList<BankList>();
  static BankList getDefault() => _defaultInstance ??= create()..freeze();
  static BankList _defaultInstance;

  $core.List<Bank> get banks => $_getList(0);
}

class BankWithDistance extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BankWithDistance')
    ..a<Bank>(1, 'bank', $pb.PbFieldType.OM, Bank.getDefault, Bank.create)
    ..a<$core.double>(2, 'dist', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  BankWithDistance() : super();
  BankWithDistance.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  BankWithDistance.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  BankWithDistance clone() => BankWithDistance()..mergeFromMessage(this);
  BankWithDistance copyWith(void Function(BankWithDistance) updates) => super.copyWith((message) => updates(message as BankWithDistance));
  $pb.BuilderInfo get info_ => _i;
  static BankWithDistance create() => BankWithDistance();
  BankWithDistance createEmptyInstance() => create();
  static $pb.PbList<BankWithDistance> createRepeated() => $pb.PbList<BankWithDistance>();
  static BankWithDistance getDefault() => _defaultInstance ??= create()..freeze();
  static BankWithDistance _defaultInstance;

  Bank get bank => $_getN(0);
  set bank(Bank v) { setField(1, v); }
  $core.bool hasBank() => $_has(0);
  void clearBank() => clearField(1);

  $core.double get dist => $_getN(1);
  set dist($core.double v) { $_setDouble(1, v); }
  $core.bool hasDist() => $_has(1);
  void clearDist() => clearField(2);
}

class BankName extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BankName')
    ..aOS(1, 'name')
    ..hasRequiredFields = false
  ;

  BankName() : super();
  BankName.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  BankName.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  BankName clone() => BankName()..mergeFromMessage(this);
  BankName copyWith(void Function(BankName) updates) => super.copyWith((message) => updates(message as BankName));
  $pb.BuilderInfo get info_ => _i;
  static BankName create() => BankName();
  BankName createEmptyInstance() => create();
  static $pb.PbList<BankName> createRepeated() => $pb.PbList<BankName>();
  static BankName getDefault() => _defaultInstance ??= create()..freeze();
  static BankName _defaultInstance;

  $core.String get name => $_getS(0, '');
  set name($core.String v) { $_setString(0, v); }
  $core.bool hasName() => $_has(0);
  void clearName() => clearField(1);
}

