import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserinfoRecord extends FirestoreRecord {
  UserinfoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "course" field.
  String? _course;
  String get course => _course ?? '';
  bool hasCourse() => _course != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "isClassRepresentative" field.
  bool? _isClassRepresentative;
  bool get isClassRepresentative => _isClassRepresentative ?? false;
  bool hasIsClassRepresentative() => _isClassRepresentative != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "registrationNumber" field.
  String? _registrationNumber;
  String get registrationNumber => _registrationNumber ?? '';
  bool hasRegistrationNumber() => _registrationNumber != null;

  // "yearOfStudy" field.
  int? _yearOfStudy;
  int get yearOfStudy => _yearOfStudy ?? 0;
  bool hasYearOfStudy() => _yearOfStudy != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _course = snapshotData['course'] as String?;
    _email = snapshotData['email'] as String?;
    _isClassRepresentative = snapshotData['isClassRepresentative'] as bool?;
    _phoneNumber = snapshotData['phoneNumber'] as String?;
    _registrationNumber = snapshotData['registrationNumber'] as String?;
    _yearOfStudy = castToType<int>(snapshotData['yearOfStudy']);
    _name = snapshotData['name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('userinfo')
          : FirebaseFirestore.instance.collectionGroup('userinfo');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('userinfo').doc(id);

  static Stream<UserinfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserinfoRecord.fromSnapshot(s));

  static Future<UserinfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserinfoRecord.fromSnapshot(s));

  static UserinfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserinfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserinfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserinfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserinfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserinfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserinfoRecordData({
  String? course,
  String? email,
  bool? isClassRepresentative,
  String? phoneNumber,
  String? registrationNumber,
  int? yearOfStudy,
  String? name,
  String? photoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'course': course,
      'email': email,
      'isClassRepresentative': isClassRepresentative,
      'phoneNumber': phoneNumber,
      'registrationNumber': registrationNumber,
      'yearOfStudy': yearOfStudy,
      'name': name,
      'photo_url': photoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserinfoRecordDocumentEquality implements Equality<UserinfoRecord> {
  const UserinfoRecordDocumentEquality();

  @override
  bool equals(UserinfoRecord? e1, UserinfoRecord? e2) {
    return e1?.course == e2?.course &&
        e1?.email == e2?.email &&
        e1?.isClassRepresentative == e2?.isClassRepresentative &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.registrationNumber == e2?.registrationNumber &&
        e1?.yearOfStudy == e2?.yearOfStudy &&
        e1?.name == e2?.name &&
        e1?.photoUrl == e2?.photoUrl;
  }

  @override
  int hash(UserinfoRecord? e) => const ListEquality().hash([
        e?.course,
        e?.email,
        e?.isClassRepresentative,
        e?.phoneNumber,
        e?.registrationNumber,
        e?.yearOfStudy,
        e?.name,
        e?.photoUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is UserinfoRecord;
}
