// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PdfTypeStruct extends FFFirebaseStruct {
  PdfTypeStruct({
    String? notes,
    String? mwaks,
    String? exams,
    String? cats,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _notes = notes,
        _mwaks = mwaks,
        _exams = exams,
        _cats = cats,
        super(firestoreUtilData);

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  set notes(String? val) => _notes = val;
  bool hasNotes() => _notes != null;

  // "mwaks" field.
  String? _mwaks;
  String get mwaks => _mwaks ?? '';
  set mwaks(String? val) => _mwaks = val;
  bool hasMwaks() => _mwaks != null;

  // "exams" field.
  String? _exams;
  String get exams => _exams ?? '';
  set exams(String? val) => _exams = val;
  bool hasExams() => _exams != null;

  // "cats" field.
  String? _cats;
  String get cats => _cats ?? '';
  set cats(String? val) => _cats = val;
  bool hasCats() => _cats != null;

  static PdfTypeStruct fromMap(Map<String, dynamic> data) => PdfTypeStruct(
        notes: data['notes'] as String?,
        mwaks: data['mwaks'] as String?,
        exams: data['exams'] as String?,
        cats: data['cats'] as String?,
      );

  static PdfTypeStruct? maybeFromMap(dynamic data) =>
      data is Map ? PdfTypeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'notes': _notes,
        'mwaks': _mwaks,
        'exams': _exams,
        'cats': _cats,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'notes': serializeParam(
          _notes,
          ParamType.String,
        ),
        'mwaks': serializeParam(
          _mwaks,
          ParamType.String,
        ),
        'exams': serializeParam(
          _exams,
          ParamType.String,
        ),
        'cats': serializeParam(
          _cats,
          ParamType.String,
        ),
      }.withoutNulls;

  static PdfTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      PdfTypeStruct(
        notes: deserializeParam(
          data['notes'],
          ParamType.String,
          false,
        ),
        mwaks: deserializeParam(
          data['mwaks'],
          ParamType.String,
          false,
        ),
        exams: deserializeParam(
          data['exams'],
          ParamType.String,
          false,
        ),
        cats: deserializeParam(
          data['cats'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PdfTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PdfTypeStruct &&
        notes == other.notes &&
        mwaks == other.mwaks &&
        exams == other.exams &&
        cats == other.cats;
  }

  @override
  int get hashCode => const ListEquality().hash([notes, mwaks, exams, cats]);
}

PdfTypeStruct createPdfTypeStruct({
  String? notes,
  String? mwaks,
  String? exams,
  String? cats,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PdfTypeStruct(
      notes: notes,
      mwaks: mwaks,
      exams: exams,
      cats: cats,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PdfTypeStruct? updatePdfTypeStruct(
  PdfTypeStruct? pdfType, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    pdfType
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPdfTypeStructData(
  Map<String, dynamic> firestoreData,
  PdfTypeStruct? pdfType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (pdfType == null) {
    return;
  }
  if (pdfType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && pdfType.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pdfTypeData = getPdfTypeFirestoreData(pdfType, forFieldValue);
  final nestedData = pdfTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = pdfType.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPdfTypeFirestoreData(
  PdfTypeStruct? pdfType, [
  bool forFieldValue = false,
]) {
  if (pdfType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(pdfType.toMap());

  // Add any Firestore field values
  pdfType.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPdfTypeListFirestoreData(
  List<PdfTypeStruct>? pdfTypes,
) =>
    pdfTypes?.map((e) => getPdfTypeFirestoreData(e, true)).toList() ?? [];
