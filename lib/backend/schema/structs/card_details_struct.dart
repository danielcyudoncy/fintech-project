// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardDetailsStruct extends FFFirebaseStruct {
  CardDetailsStruct({
    int? cardNumber,
    int? cvc,
    int? expMonth,
    int? expYear,
    String? cardType,
    bool? expired,
    DateTime? lastUsed,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _cardNumber = cardNumber,
        _cvc = cvc,
        _expMonth = expMonth,
        _expYear = expYear,
        _cardType = cardType,
        _expired = expired,
        _lastUsed = lastUsed,
        super(firestoreUtilData);

  // "cardNumber" field.
  int? _cardNumber;
  int get cardNumber => _cardNumber ?? 0;
  set cardNumber(int? val) => _cardNumber = val;
  void incrementCardNumber(int amount) => _cardNumber = cardNumber + amount;
  bool hasCardNumber() => _cardNumber != null;

  // "cvc" field.
  int? _cvc;
  int get cvc => _cvc ?? 0;
  set cvc(int? val) => _cvc = val;
  void incrementCvc(int amount) => _cvc = cvc + amount;
  bool hasCvc() => _cvc != null;

  // "expMonth" field.
  int? _expMonth;
  int get expMonth => _expMonth ?? 0;
  set expMonth(int? val) => _expMonth = val;
  void incrementExpMonth(int amount) => _expMonth = expMonth + amount;
  bool hasExpMonth() => _expMonth != null;

  // "expYear" field.
  int? _expYear;
  int get expYear => _expYear ?? 0;
  set expYear(int? val) => _expYear = val;
  void incrementExpYear(int amount) => _expYear = expYear + amount;
  bool hasExpYear() => _expYear != null;

  // "cardType" field.
  String? _cardType;
  String get cardType => _cardType ?? '';
  set cardType(String? val) => _cardType = val;
  bool hasCardType() => _cardType != null;

  // "expired" field.
  bool? _expired;
  bool get expired => _expired ?? false;
  set expired(bool? val) => _expired = val;
  bool hasExpired() => _expired != null;

  // "lastUsed" field.
  DateTime? _lastUsed;
  DateTime? get lastUsed => _lastUsed;
  set lastUsed(DateTime? val) => _lastUsed = val;
  bool hasLastUsed() => _lastUsed != null;

  static CardDetailsStruct fromMap(Map<String, dynamic> data) =>
      CardDetailsStruct(
        cardNumber: castToType<int>(data['cardNumber']),
        cvc: castToType<int>(data['cvc']),
        expMonth: castToType<int>(data['expMonth']),
        expYear: castToType<int>(data['expYear']),
        cardType: data['cardType'] as String?,
        expired: data['expired'] as bool?,
        lastUsed: data['lastUsed'] as DateTime?,
      );

  static CardDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? CardDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'cardNumber': _cardNumber,
        'cvc': _cvc,
        'expMonth': _expMonth,
        'expYear': _expYear,
        'cardType': _cardType,
        'expired': _expired,
        'lastUsed': _lastUsed,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cardNumber': serializeParam(
          _cardNumber,
          ParamType.int,
        ),
        'cvc': serializeParam(
          _cvc,
          ParamType.int,
        ),
        'expMonth': serializeParam(
          _expMonth,
          ParamType.int,
        ),
        'expYear': serializeParam(
          _expYear,
          ParamType.int,
        ),
        'cardType': serializeParam(
          _cardType,
          ParamType.String,
        ),
        'expired': serializeParam(
          _expired,
          ParamType.bool,
        ),
        'lastUsed': serializeParam(
          _lastUsed,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static CardDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CardDetailsStruct(
        cardNumber: deserializeParam(
          data['cardNumber'],
          ParamType.int,
          false,
        ),
        cvc: deserializeParam(
          data['cvc'],
          ParamType.int,
          false,
        ),
        expMonth: deserializeParam(
          data['expMonth'],
          ParamType.int,
          false,
        ),
        expYear: deserializeParam(
          data['expYear'],
          ParamType.int,
          false,
        ),
        cardType: deserializeParam(
          data['cardType'],
          ParamType.String,
          false,
        ),
        expired: deserializeParam(
          data['expired'],
          ParamType.bool,
          false,
        ),
        lastUsed: deserializeParam(
          data['lastUsed'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'CardDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CardDetailsStruct &&
        cardNumber == other.cardNumber &&
        cvc == other.cvc &&
        expMonth == other.expMonth &&
        expYear == other.expYear &&
        cardType == other.cardType &&
        expired == other.expired &&
        lastUsed == other.lastUsed;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([cardNumber, cvc, expMonth, expYear, cardType, expired, lastUsed]);
}

CardDetailsStruct createCardDetailsStruct({
  int? cardNumber,
  int? cvc,
  int? expMonth,
  int? expYear,
  String? cardType,
  bool? expired,
  DateTime? lastUsed,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CardDetailsStruct(
      cardNumber: cardNumber,
      cvc: cvc,
      expMonth: expMonth,
      expYear: expYear,
      cardType: cardType,
      expired: expired,
      lastUsed: lastUsed,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CardDetailsStruct? updateCardDetailsStruct(
  CardDetailsStruct? cardDetails, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cardDetails
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCardDetailsStructData(
  Map<String, dynamic> firestoreData,
  CardDetailsStruct? cardDetails,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cardDetails == null) {
    return;
  }
  if (cardDetails.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cardDetails.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cardDetailsData =
      getCardDetailsFirestoreData(cardDetails, forFieldValue);
  final nestedData =
      cardDetailsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cardDetails.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCardDetailsFirestoreData(
  CardDetailsStruct? cardDetails, [
  bool forFieldValue = false,
]) {
  if (cardDetails == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cardDetails.toMap());

  // Add any Firestore field values
  cardDetails.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCardDetailsListFirestoreData(
  List<CardDetailsStruct>? cardDetailss,
) =>
    cardDetailss?.map((e) => getCardDetailsFirestoreData(e, true)).toList() ??
    [];
