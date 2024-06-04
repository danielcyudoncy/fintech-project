// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SpecificationsStruct extends FFFirebaseStruct {
  SpecificationsStruct({
    double? size,
    bool? furnish,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _size = size,
        _furnish = furnish,
        super(firestoreUtilData);

  // "size" field.
  double? _size;
  double get size => _size ?? 0.0;
  set size(double? val) => _size = val;
  void incrementSize(double amount) => _size = size + amount;
  bool hasSize() => _size != null;

  // "furnish" field.
  bool? _furnish;
  bool get furnish => _furnish ?? false;
  set furnish(bool? val) => _furnish = val;
  bool hasFurnish() => _furnish != null;

  static SpecificationsStruct fromMap(Map<String, dynamic> data) =>
      SpecificationsStruct(
        size: castToType<double>(data['size']),
        furnish: data['furnish'] as bool?,
      );

  static SpecificationsStruct? maybeFromMap(dynamic data) => data is Map
      ? SpecificationsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'size': _size,
        'furnish': _furnish,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'size': serializeParam(
          _size,
          ParamType.double,
        ),
        'furnish': serializeParam(
          _furnish,
          ParamType.bool,
        ),
      }.withoutNulls;

  static SpecificationsStruct fromSerializableMap(Map<String, dynamic> data) =>
      SpecificationsStruct(
        size: deserializeParam(
          data['size'],
          ParamType.double,
          false,
        ),
        furnish: deserializeParam(
          data['furnish'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'SpecificationsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SpecificationsStruct &&
        size == other.size &&
        furnish == other.furnish;
  }

  @override
  int get hashCode => const ListEquality().hash([size, furnish]);
}

SpecificationsStruct createSpecificationsStruct({
  double? size,
  bool? furnish,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SpecificationsStruct(
      size: size,
      furnish: furnish,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SpecificationsStruct? updateSpecificationsStruct(
  SpecificationsStruct? specifications, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    specifications
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSpecificationsStructData(
  Map<String, dynamic> firestoreData,
  SpecificationsStruct? specifications,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (specifications == null) {
    return;
  }
  if (specifications.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && specifications.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final specificationsData =
      getSpecificationsFirestoreData(specifications, forFieldValue);
  final nestedData =
      specificationsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = specifications.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSpecificationsFirestoreData(
  SpecificationsStruct? specifications, [
  bool forFieldValue = false,
]) {
  if (specifications == null) {
    return {};
  }
  final firestoreData = mapToFirestore(specifications.toMap());

  // Add any Firestore field values
  specifications.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSpecificationsListFirestoreData(
  List<SpecificationsStruct>? specificationss,
) =>
    specificationss
        ?.map((e) => getSpecificationsFirestoreData(e, true))
        .toList() ??
    [];
