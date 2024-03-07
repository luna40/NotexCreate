// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CoursesStruct extends FFFirebaseStruct {
  CoursesStruct({
    UnitStruct? courses,
    String? courseName,
    String? courseId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _courses = courses,
        _courseName = courseName,
        _courseId = courseId,
        super(firestoreUtilData);

  // "courses" field.
  UnitStruct? _courses;
  UnitStruct get courses => _courses ?? UnitStruct();
  set courses(UnitStruct? val) => _courses = val;
  void updateCourses(Function(UnitStruct) updateFn) =>
      updateFn(_courses ??= UnitStruct());
  bool hasCourses() => _courses != null;

  // "CourseName" field.
  String? _courseName;
  String get courseName => _courseName ?? '';
  set courseName(String? val) => _courseName = val;
  bool hasCourseName() => _courseName != null;

  // "CourseId" field.
  String? _courseId;
  String get courseId => _courseId ?? '';
  set courseId(String? val) => _courseId = val;
  bool hasCourseId() => _courseId != null;

  static CoursesStruct fromMap(Map<String, dynamic> data) => CoursesStruct(
        courses: UnitStruct.maybeFromMap(data['courses']),
        courseName: data['CourseName'] as String?,
        courseId: data['CourseId'] as String?,
      );

  static CoursesStruct? maybeFromMap(dynamic data) =>
      data is Map ? CoursesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'courses': _courses?.toMap(),
        'CourseName': _courseName,
        'CourseId': _courseId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'courses': serializeParam(
          _courses,
          ParamType.DataStruct,
        ),
        'CourseName': serializeParam(
          _courseName,
          ParamType.String,
        ),
        'CourseId': serializeParam(
          _courseId,
          ParamType.String,
        ),
      }.withoutNulls;

  static CoursesStruct fromSerializableMap(Map<String, dynamic> data) =>
      CoursesStruct(
        courses: deserializeStructParam(
          data['courses'],
          ParamType.DataStruct,
          false,
          structBuilder: UnitStruct.fromSerializableMap,
        ),
        courseName: deserializeParam(
          data['CourseName'],
          ParamType.String,
          false,
        ),
        courseId: deserializeParam(
          data['CourseId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CoursesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CoursesStruct &&
        courses == other.courses &&
        courseName == other.courseName &&
        courseId == other.courseId;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([courses, courseName, courseId]);
}

CoursesStruct createCoursesStruct({
  UnitStruct? courses,
  String? courseName,
  String? courseId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CoursesStruct(
      courses: courses ?? (clearUnsetFields ? UnitStruct() : null),
      courseName: courseName,
      courseId: courseId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CoursesStruct? updateCoursesStruct(
  CoursesStruct? coursesStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    coursesStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCoursesStructData(
  Map<String, dynamic> firestoreData,
  CoursesStruct? coursesStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (coursesStruct == null) {
    return;
  }
  if (coursesStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && coursesStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final coursesStructData =
      getCoursesFirestoreData(coursesStruct, forFieldValue);
  final nestedData =
      coursesStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = coursesStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCoursesFirestoreData(
  CoursesStruct? coursesStruct, [
  bool forFieldValue = false,
]) {
  if (coursesStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(coursesStruct.toMap());

  // Handle nested data for "courses" field.
  addUnitStructData(
    firestoreData,
    coursesStruct.hasCourses() ? coursesStruct.courses : null,
    'courses',
    forFieldValue,
  );

  // Add any Firestore field values
  coursesStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCoursesListFirestoreData(
  List<CoursesStruct>? coursesStructs,
) =>
    coursesStructs?.map((e) => getCoursesFirestoreData(e, true)).toList() ?? [];
