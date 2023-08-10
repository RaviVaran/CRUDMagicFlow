import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserdetailsRecord extends FirestoreRecord {
  UserdetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "firstname" field.
  String? _firstname;
  String get firstname => _firstname ?? '';
  bool hasFirstname() => _firstname != null;

  // "lastname" field.
  String? _lastname;
  String get lastname => _lastname ?? '';
  bool hasLastname() => _lastname != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "mobile_number" field.
  String? _mobileNumber;
  String get mobileNumber => _mobileNumber ?? '';
  bool hasMobileNumber() => _mobileNumber != null;

  void _initializeFields() {
    _firstname = snapshotData['firstname'] as String?;
    _lastname = snapshotData['lastname'] as String?;
    _email = snapshotData['email'] as String?;
    _mobileNumber = snapshotData['mobile_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userdetails');

  static Stream<UserdetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserdetailsRecord.fromSnapshot(s));

  static Future<UserdetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserdetailsRecord.fromSnapshot(s));

  static UserdetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserdetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserdetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserdetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserdetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserdetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserdetailsRecordData({
  String? firstname,
  String? lastname,
  String? email,
  String? mobileNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'firstname': firstname,
      'lastname': lastname,
      'email': email,
      'mobile_number': mobileNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserdetailsRecordDocumentEquality implements Equality<UserdetailsRecord> {
  const UserdetailsRecordDocumentEquality();

  @override
  bool equals(UserdetailsRecord? e1, UserdetailsRecord? e2) {
    return e1?.firstname == e2?.firstname &&
        e1?.lastname == e2?.lastname &&
        e1?.email == e2?.email &&
        e1?.mobileNumber == e2?.mobileNumber;
  }

  @override
  int hash(UserdetailsRecord? e) => const ListEquality()
      .hash([e?.firstname, e?.lastname, e?.email, e?.mobileNumber]);

  @override
  bool isValidKey(Object? o) => o is UserdetailsRecord;
}
