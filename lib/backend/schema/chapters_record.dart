import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ChaptersRecord extends FirestoreRecord {
  ChaptersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "chapterName" field.
  String? _chapterName;
  String get chapterName => _chapterName ?? '';
  bool hasChapterName() => _chapterName != null;

  // "Pdf" field.
  String? _pdf;
  String get pdf => _pdf ?? '';
  bool hasPdf() => _pdf != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _chapterName = snapshotData['chapterName'] as String?;
    _pdf = snapshotData['Pdf'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('chapters')
          : FirebaseFirestore.instance.collectionGroup('chapters');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('chapters').doc(id);

  static Stream<ChaptersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChaptersRecord.fromSnapshot(s));

  static Future<ChaptersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChaptersRecord.fromSnapshot(s));

  static ChaptersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChaptersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChaptersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChaptersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChaptersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChaptersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChaptersRecordData({
  String? chapterName,
  String? pdf,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'chapterName': chapterName,
      'Pdf': pdf,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChaptersRecordDocumentEquality implements Equality<ChaptersRecord> {
  const ChaptersRecordDocumentEquality();

  @override
  bool equals(ChaptersRecord? e1, ChaptersRecord? e2) {
    return e1?.chapterName == e2?.chapterName && e1?.pdf == e2?.pdf;
  }

  @override
  int hash(ChaptersRecord? e) =>
      const ListEquality().hash([e?.chapterName, e?.pdf]);

  @override
  bool isValidKey(Object? o) => o is ChaptersRecord;
}
