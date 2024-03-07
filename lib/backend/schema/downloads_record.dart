import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class DownloadsRecord extends FirestoreRecord {
  DownloadsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "downloadURL" field.
  String? _downloadURL;
  String get downloadURL => _downloadURL ?? '';
  bool hasDownloadURL() => _downloadURL != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  bool hasCreated() => _created != null;

  void _initializeFields() {
    _downloadURL = snapshotData['downloadURL'] as String?;
    _name = snapshotData['name'] as String?;
    _created = snapshotData['created'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('downloads');

  static Stream<DownloadsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DownloadsRecord.fromSnapshot(s));

  static Future<DownloadsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DownloadsRecord.fromSnapshot(s));

  static DownloadsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DownloadsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DownloadsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DownloadsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DownloadsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DownloadsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDownloadsRecordData({
  String? downloadURL,
  String? name,
  DateTime? created,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'downloadURL': downloadURL,
      'name': name,
      'created': created,
    }.withoutNulls,
  );

  return firestoreData;
}

class DownloadsRecordDocumentEquality implements Equality<DownloadsRecord> {
  const DownloadsRecordDocumentEquality();

  @override
  bool equals(DownloadsRecord? e1, DownloadsRecord? e2) {
    return e1?.downloadURL == e2?.downloadURL &&
        e1?.name == e2?.name &&
        e1?.created == e2?.created;
  }

  @override
  int hash(DownloadsRecord? e) =>
      const ListEquality().hash([e?.downloadURL, e?.name, e?.created]);

  @override
  bool isValidKey(Object? o) => o is DownloadsRecord;
}
