// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddChapterAndImagesStruct extends FFFirebaseStruct {
  AddChapterAndImagesStruct({
    String? chapterName,
    int? startIndex,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _chapterName = chapterName,
        _startIndex = startIndex,
        super(firestoreUtilData);

  // "chapterName" field.
  String? _chapterName;
  String get chapterName => _chapterName ?? '';
  set chapterName(String? val) => _chapterName = val;
  bool hasChapterName() => _chapterName != null;

  // "startIndex" field.
  int? _startIndex;
  int get startIndex => _startIndex ?? 0;
  set startIndex(int? val) => _startIndex = val;
  void incrementStartIndex(int amount) => _startIndex = startIndex + amount;
  bool hasStartIndex() => _startIndex != null;

  static AddChapterAndImagesStruct fromMap(Map<String, dynamic> data) =>
      AddChapterAndImagesStruct(
        chapterName: data['chapterName'] as String?,
        startIndex: castToType<int>(data['startIndex']),
      );

  static AddChapterAndImagesStruct? maybeFromMap(dynamic data) => data is Map
      ? AddChapterAndImagesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'chapterName': _chapterName,
        'startIndex': _startIndex,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'chapterName': serializeParam(
          _chapterName,
          ParamType.String,
        ),
        'startIndex': serializeParam(
          _startIndex,
          ParamType.int,
        ),
      }.withoutNulls;

  static AddChapterAndImagesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AddChapterAndImagesStruct(
        chapterName: deserializeParam(
          data['chapterName'],
          ParamType.String,
          false,
        ),
        startIndex: deserializeParam(
          data['startIndex'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'AddChapterAndImagesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddChapterAndImagesStruct &&
        chapterName == other.chapterName &&
        startIndex == other.startIndex;
  }

  @override
  int get hashCode => const ListEquality().hash([chapterName, startIndex]);
}

AddChapterAndImagesStruct createAddChapterAndImagesStruct({
  String? chapterName,
  int? startIndex,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AddChapterAndImagesStruct(
      chapterName: chapterName,
      startIndex: startIndex,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AddChapterAndImagesStruct? updateAddChapterAndImagesStruct(
  AddChapterAndImagesStruct? addChapterAndImages, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    addChapterAndImages
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAddChapterAndImagesStructData(
  Map<String, dynamic> firestoreData,
  AddChapterAndImagesStruct? addChapterAndImages,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (addChapterAndImages == null) {
    return;
  }
  if (addChapterAndImages.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && addChapterAndImages.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final addChapterAndImagesData =
      getAddChapterAndImagesFirestoreData(addChapterAndImages, forFieldValue);
  final nestedData =
      addChapterAndImagesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      addChapterAndImages.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAddChapterAndImagesFirestoreData(
  AddChapterAndImagesStruct? addChapterAndImages, [
  bool forFieldValue = false,
]) {
  if (addChapterAndImages == null) {
    return {};
  }
  final firestoreData = mapToFirestore(addChapterAndImages.toMap());

  // Add any Firestore field values
  addChapterAndImages.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAddChapterAndImagesListFirestoreData(
  List<AddChapterAndImagesStruct>? addChapterAndImagess,
) =>
    addChapterAndImagess
        ?.map((e) => getAddChapterAndImagesFirestoreData(e, true))
        .toList() ??
    [];
