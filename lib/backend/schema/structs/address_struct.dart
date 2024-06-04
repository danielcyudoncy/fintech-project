// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressStruct extends FFFirebaseStruct {
  AddressStruct({
    String? country,
    String? state,
    String? localGovernment,
    String? homeAddress,
    int? houseNumber,
    LatLng? latLong,
    bool? isRegister,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _country = country,
        _state = state,
        _localGovernment = localGovernment,
        _homeAddress = homeAddress,
        _houseNumber = houseNumber,
        _latLong = latLong,
        _isRegister = isRegister,
        super(firestoreUtilData);

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;
  bool hasCountry() => _country != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;
  bool hasState() => _state != null;

  // "localGovernment" field.
  String? _localGovernment;
  String get localGovernment => _localGovernment ?? '';
  set localGovernment(String? val) => _localGovernment = val;
  bool hasLocalGovernment() => _localGovernment != null;

  // "homeAddress" field.
  String? _homeAddress;
  String get homeAddress => _homeAddress ?? '';
  set homeAddress(String? val) => _homeAddress = val;
  bool hasHomeAddress() => _homeAddress != null;

  // "houseNumber" field.
  int? _houseNumber;
  int get houseNumber => _houseNumber ?? 0;
  set houseNumber(int? val) => _houseNumber = val;
  void incrementHouseNumber(int amount) => _houseNumber = houseNumber + amount;
  bool hasHouseNumber() => _houseNumber != null;

  // "latLong" field.
  LatLng? _latLong;
  LatLng? get latLong => _latLong;
  set latLong(LatLng? val) => _latLong = val;
  bool hasLatLong() => _latLong != null;

  // "isRegister" field.
  bool? _isRegister;
  bool get isRegister => _isRegister ?? false;
  set isRegister(bool? val) => _isRegister = val;
  bool hasIsRegister() => _isRegister != null;

  static AddressStruct fromMap(Map<String, dynamic> data) => AddressStruct(
        country: data['country'] as String?,
        state: data['state'] as String?,
        localGovernment: data['localGovernment'] as String?,
        homeAddress: data['homeAddress'] as String?,
        houseNumber: castToType<int>(data['houseNumber']),
        latLong: data['latLong'] as LatLng?,
        isRegister: data['isRegister'] as bool?,
      );

  static AddressStruct? maybeFromMap(dynamic data) =>
      data is Map ? AddressStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'country': _country,
        'state': _state,
        'localGovernment': _localGovernment,
        'homeAddress': _homeAddress,
        'houseNumber': _houseNumber,
        'latLong': _latLong,
        'isRegister': _isRegister,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'localGovernment': serializeParam(
          _localGovernment,
          ParamType.String,
        ),
        'homeAddress': serializeParam(
          _homeAddress,
          ParamType.String,
        ),
        'houseNumber': serializeParam(
          _houseNumber,
          ParamType.int,
        ),
        'latLong': serializeParam(
          _latLong,
          ParamType.LatLng,
        ),
        'isRegister': serializeParam(
          _isRegister,
          ParamType.bool,
        ),
      }.withoutNulls;

  static AddressStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddressStruct(
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        localGovernment: deserializeParam(
          data['localGovernment'],
          ParamType.String,
          false,
        ),
        homeAddress: deserializeParam(
          data['homeAddress'],
          ParamType.String,
          false,
        ),
        houseNumber: deserializeParam(
          data['houseNumber'],
          ParamType.int,
          false,
        ),
        latLong: deserializeParam(
          data['latLong'],
          ParamType.LatLng,
          false,
        ),
        isRegister: deserializeParam(
          data['isRegister'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'AddressStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddressStruct &&
        country == other.country &&
        state == other.state &&
        localGovernment == other.localGovernment &&
        homeAddress == other.homeAddress &&
        houseNumber == other.houseNumber &&
        latLong == other.latLong &&
        isRegister == other.isRegister;
  }

  @override
  int get hashCode => const ListEquality().hash([
        country,
        state,
        localGovernment,
        homeAddress,
        houseNumber,
        latLong,
        isRegister
      ]);
}

AddressStruct createAddressStruct({
  String? country,
  String? state,
  String? localGovernment,
  String? homeAddress,
  int? houseNumber,
  LatLng? latLong,
  bool? isRegister,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AddressStruct(
      country: country,
      state: state,
      localGovernment: localGovernment,
      homeAddress: homeAddress,
      houseNumber: houseNumber,
      latLong: latLong,
      isRegister: isRegister,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AddressStruct? updateAddressStruct(
  AddressStruct? address, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    address
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAddressStructData(
  Map<String, dynamic> firestoreData,
  AddressStruct? address,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (address == null) {
    return;
  }
  if (address.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && address.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final addressData = getAddressFirestoreData(address, forFieldValue);
  final nestedData = addressData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = address.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAddressFirestoreData(
  AddressStruct? address, [
  bool forFieldValue = false,
]) {
  if (address == null) {
    return {};
  }
  final firestoreData = mapToFirestore(address.toMap());

  // Add any Firestore field values
  address.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAddressListFirestoreData(
  List<AddressStruct>? addresss,
) =>
    addresss?.map((e) => getAddressFirestoreData(e, true)).toList() ?? [];
