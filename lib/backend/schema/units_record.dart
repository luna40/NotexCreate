import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class UnitsRecord extends FirestoreRecord {
  UnitsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "unitCode" field.
  String? _unitCode;
  String get unitCode => _unitCode ?? '';
  bool hasUnitCode() => _unitCode != null;

  // "unitName" field.
  String? _unitName;
  String get unitName => _unitName ?? '';
  bool hasUnitName() => _unitName != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _unitCode = snapshotData['unitCode'] as String?;
    _unitName = snapshotData['unitName'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('units')
          : FirebaseFirestore.instance.collectionGroup('units');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('units').doc(id);

  static Stream<UnitsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UnitsRecord.fromSnapshot(s));

  static Future<UnitsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UnitsRecord.fromSnapshot(s));

  static UnitsRecord fromSnapshot(DocumentSnapshot snapshot) => UnitsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UnitsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UnitsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UnitsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UnitsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUnitsRecordData({
  String? unitCode,
  String? unitName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'unitCode': unitCode,
      'unitName': unitName,
    }.withoutNulls,
  );

  return firestoreData;
}

class UnitsRecordDocumentEquality implements Equality<UnitsRecord> {
  const UnitsRecordDocumentEquality();

  @override
  bool equals(UnitsRecord? e1, UnitsRecord? e2) {
    return e1?.unitCode == e2?.unitCode && e1?.unitName == e2?.unitName;
  }

  @override
  int hash(UnitsRecord? e) =>
      const ListEquality().hash([e?.unitCode, e?.unitName]);

  @override
  bool isValidKey(Object? o) => o is UnitsRecord;
}
