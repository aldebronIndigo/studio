import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BranchRecord extends FirestoreRecord {
  BranchRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdat" field.
  DateTime? _createdat;
  DateTime? get createdat => _createdat;
  bool hasCreatedat() => _createdat != null;

  // "branchName" field.
  String? _branchName;
  String get branchName => _branchName ?? '';
  bool hasBranchName() => _branchName != null;

  // "branchVenue" field.
  String? _branchVenue;
  String get branchVenue => _branchVenue ?? '';
  bool hasBranchVenue() => _branchVenue != null;

  // "branchAddress" field.
  String? _branchAddress;
  String get branchAddress => _branchAddress ?? '';
  bool hasBranchAddress() => _branchAddress != null;

  // "branchCity" field.
  String? _branchCity;
  String get branchCity => _branchCity ?? '';
  bool hasBranchCity() => _branchCity != null;

  // "branchState" field.
  String? _branchState;
  String get branchState => _branchState ?? '';
  bool hasBranchState() => _branchState != null;

  // "branchCountry" field.
  String? _branchCountry;
  String get branchCountry => _branchCountry ?? '';
  bool hasBranchCountry() => _branchCountry != null;

  // "branchZipCode" field.
  String? _branchZipCode;
  String get branchZipCode => _branchZipCode ?? '';
  bool hasBranchZipCode() => _branchZipCode != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "emailAddress" field.
  String? _emailAddress;
  String get emailAddress => _emailAddress ?? '';
  bool hasEmailAddress() => _emailAddress != null;

  // "branchAdmin" field.
  DocumentReference? _branchAdmin;
  DocumentReference? get branchAdmin => _branchAdmin;
  bool hasBranchAdmin() => _branchAdmin != null;

  // "branchAdminName" field.
  String? _branchAdminName;
  String get branchAdminName => _branchAdminName ?? '';
  bool hasBranchAdminName() => _branchAdminName != null;

  // "branchAdminPic" field.
  String? _branchAdminPic;
  String get branchAdminPic => _branchAdminPic ?? '';
  bool hasBranchAdminPic() => _branchAdminPic != null;

  // "branchDescription" field.
  String? _branchDescription;
  String get branchDescription => _branchDescription ?? '';
  bool hasBranchDescription() => _branchDescription != null;

  // "refStudio" field.
  DocumentReference? _refStudio;
  DocumentReference? get refStudio => _refStudio;
  bool hasRefStudio() => _refStudio != null;

  // "branchSeq" field.
  int? _branchSeq;
  int get branchSeq => _branchSeq ?? 0;
  bool hasBranchSeq() => _branchSeq != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdat = snapshotData['createdat'] as DateTime?;
    _branchName = snapshotData['branchName'] as String?;
    _branchVenue = snapshotData['branchVenue'] as String?;
    _branchAddress = snapshotData['branchAddress'] as String?;
    _branchCity = snapshotData['branchCity'] as String?;
    _branchState = snapshotData['branchState'] as String?;
    _branchCountry = snapshotData['branchCountry'] as String?;
    _branchZipCode = snapshotData['branchZipCode'] as String?;
    _phoneNumber = snapshotData['phoneNumber'] as String?;
    _emailAddress = snapshotData['emailAddress'] as String?;
    _branchAdmin = snapshotData['branchAdmin'] as DocumentReference?;
    _branchAdminName = snapshotData['branchAdminName'] as String?;
    _branchAdminPic = snapshotData['branchAdminPic'] as String?;
    _branchDescription = snapshotData['branchDescription'] as String?;
    _refStudio = snapshotData['refStudio'] as DocumentReference?;
    _branchSeq = castToType<int>(snapshotData['branchSeq']);
    _location = snapshotData['location'] as LatLng?;
    _status = snapshotData['status'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('branch')
          : FirebaseFirestore.instance.collectionGroup('branch');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('branch').doc(id);

  static Stream<BranchRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BranchRecord.fromSnapshot(s));

  static Future<BranchRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BranchRecord.fromSnapshot(s));

  static BranchRecord fromSnapshot(DocumentSnapshot snapshot) => BranchRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BranchRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BranchRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BranchRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BranchRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBranchRecordData({
  DateTime? createdat,
  String? branchName,
  String? branchVenue,
  String? branchAddress,
  String? branchCity,
  String? branchState,
  String? branchCountry,
  String? branchZipCode,
  String? phoneNumber,
  String? emailAddress,
  DocumentReference? branchAdmin,
  String? branchAdminName,
  String? branchAdminPic,
  String? branchDescription,
  DocumentReference? refStudio,
  int? branchSeq,
  LatLng? location,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdat': createdat,
      'branchName': branchName,
      'branchVenue': branchVenue,
      'branchAddress': branchAddress,
      'branchCity': branchCity,
      'branchState': branchState,
      'branchCountry': branchCountry,
      'branchZipCode': branchZipCode,
      'phoneNumber': phoneNumber,
      'emailAddress': emailAddress,
      'branchAdmin': branchAdmin,
      'branchAdminName': branchAdminName,
      'branchAdminPic': branchAdminPic,
      'branchDescription': branchDescription,
      'refStudio': refStudio,
      'branchSeq': branchSeq,
      'location': location,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class BranchRecordDocumentEquality implements Equality<BranchRecord> {
  const BranchRecordDocumentEquality();

  @override
  bool equals(BranchRecord? e1, BranchRecord? e2) {
    return e1?.createdat == e2?.createdat &&
        e1?.branchName == e2?.branchName &&
        e1?.branchVenue == e2?.branchVenue &&
        e1?.branchAddress == e2?.branchAddress &&
        e1?.branchCity == e2?.branchCity &&
        e1?.branchState == e2?.branchState &&
        e1?.branchCountry == e2?.branchCountry &&
        e1?.branchZipCode == e2?.branchZipCode &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.emailAddress == e2?.emailAddress &&
        e1?.branchAdmin == e2?.branchAdmin &&
        e1?.branchAdminName == e2?.branchAdminName &&
        e1?.branchAdminPic == e2?.branchAdminPic &&
        e1?.branchDescription == e2?.branchDescription &&
        e1?.refStudio == e2?.refStudio &&
        e1?.branchSeq == e2?.branchSeq &&
        e1?.location == e2?.location &&
        e1?.status == e2?.status;
  }

  @override
  int hash(BranchRecord? e) => const ListEquality().hash([
        e?.createdat,
        e?.branchName,
        e?.branchVenue,
        e?.branchAddress,
        e?.branchCity,
        e?.branchState,
        e?.branchCountry,
        e?.branchZipCode,
        e?.phoneNumber,
        e?.emailAddress,
        e?.branchAdmin,
        e?.branchAdminName,
        e?.branchAdminPic,
        e?.branchDescription,
        e?.refStudio,
        e?.branchSeq,
        e?.location,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is BranchRecord;
}
