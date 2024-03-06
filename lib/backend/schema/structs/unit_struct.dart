// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class UnitStruct extends FFFirebaseStruct {
  UnitStruct({
    String? unitCode,
    String? unitName,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _unitCode = unitCode,
        _unitName = unitName,
        super(firestoreUtilData);

  // "unitCode" field.
  String? _unitCode;
  String get unitCode => _unitCode ?? '';
  set unitCode(String? val) => _unitCode = val;
  bool hasUnitCode() => _unitCode != null;

  // "unitName" field.
  String? _unitName;
  String get unitName => _unitName ?? '';
  set unitName(String? val) => _unitName = val;
  bool hasUnitName() => _unitName != null;

  static UnitStruct fromMap(Map<String, dynamic> data) => UnitStruct(
        unitCode: data['unitCode'] as String?,
        unitName: data['unitName'] as String?,
      );

  static UnitStruct? maybeFromMap(dynamic data) =>
      data is Map ? UnitStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'unitCode': _unitCode,
        'unitName': _unitName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'unitCode': serializeParam(
          _unitCode,
          ParamType.String,
        ),
        'unitName': serializeParam(
          _unitName,
          ParamType.String,
        ),
      }.withoutNulls;

  static UnitStruct fromSerializableMap(Map<String, dynamic> data) =>
      UnitStruct(
        unitCode: deserializeParam(
          data['unitCode'],
          ParamType.String,
          false,
        ),
        unitName: deserializeParam(
          data['unitName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UnitStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UnitStruct &&
        unitCode == other.unitCode &&
        unitName == other.unitName;
  }

  @override
  int get hashCode => const ListEquality().hash([unitCode, unitName]);
}

UnitStruct createUnitStruct({
  String? unitCode,
  String? unitName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UnitStruct(
      unitCode: unitCode,
      unitName: unitName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UnitStruct? updateUnitStruct(
  UnitStruct? unit, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    unit
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUnitStructData(
  Map<String, dynamic> firestoreData,
  UnitStruct? unit,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (unit == null) {
    return;
  }
  if (unit.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && unit.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final unitData = getUnitFirestoreData(unit, forFieldValue);
  final nestedData = unitData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = unit.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUnitFirestoreData(
  UnitStruct? unit, [
  bool forFieldValue = false,
]) {
  if (unit == null) {
    return {};
  }
  final firestoreData = mapToFirestore(unit.toMap());

  // Add any Firestore field values
  unit.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUnitListFirestoreData(
  List<UnitStruct>? units,
) =>
    units?.map((e) => getUnitFirestoreData(e, true)).toList() ?? [];
