import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class NotesRecord extends FirestoreRecord {
  NotesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "chapters" field.
  List<String>? _chapters;
  List<String> get chapters => _chapters ?? const [];
  bool hasChapters() => _chapters != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "noteType" field.
  String? _noteType;
  String get noteType => _noteType ?? '';
  bool hasNoteType() => _noteType != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "pdfName" field.
  String? _pdfName;
  String get pdfName => _pdfName ?? '';
  bool hasPdfName() => _pdfName != null;

  // "userid" field.
  DocumentReference? _userid;
  DocumentReference? get userid => _userid;
  bool hasUserid() => _userid != null;

  // "unitid" field.
  String? _unitid;
  String get unitid => _unitid ?? '';
  bool hasUnitid() => _unitid != null;

  void _initializeFields() {
    _chapters = getDataList(snapshotData['chapters']);
    _createdTime = snapshotData['created_time'] as DateTime?;
    _noteType = snapshotData['noteType'] as String?;
    _content = snapshotData['content'] as String?;
    _pdfName = snapshotData['pdfName'] as String?;
    _userid = snapshotData['userid'] as DocumentReference?;
    _unitid = snapshotData['unitid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notes');

  static Stream<NotesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotesRecord.fromSnapshot(s));

  static Future<NotesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotesRecord.fromSnapshot(s));

  static NotesRecord fromSnapshot(DocumentSnapshot snapshot) => NotesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotesRecordData({
  DateTime? createdTime,
  String? noteType,
  String? content,
  String? pdfName,
  DocumentReference? userid,
  String? unitid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'noteType': noteType,
      'content': content,
      'pdfName': pdfName,
      'userid': userid,
      'unitid': unitid,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotesRecordDocumentEquality implements Equality<NotesRecord> {
  const NotesRecordDocumentEquality();

  @override
  bool equals(NotesRecord? e1, NotesRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.chapters, e2?.chapters) &&
        e1?.createdTime == e2?.createdTime &&
        e1?.noteType == e2?.noteType &&
        e1?.content == e2?.content &&
        e1?.pdfName == e2?.pdfName &&
        e1?.userid == e2?.userid &&
        e1?.unitid == e2?.unitid;
  }

  @override
  int hash(NotesRecord? e) => const ListEquality().hash([
        e?.chapters,
        e?.createdTime,
        e?.noteType,
        e?.content,
        e?.pdfName,
        e?.userid,
        e?.unitid
      ]);

  @override
  bool isValidKey(Object? o) => o is NotesRecord;
}
