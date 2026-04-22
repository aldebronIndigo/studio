import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActivePassesRecord extends FirestoreRecord {
  ActivePassesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "createdbyAdmin" field.
  DocumentReference? _createdbyAdmin;
  DocumentReference? get createdbyAdmin => _createdbyAdmin;
  bool hasCreatedbyAdmin() => _createdbyAdmin != null;

  // "refStudio" field.
  DocumentReference? _refStudio;
  DocumentReference? get refStudio => _refStudio;
  bool hasRefStudio() => _refStudio != null;

  // "activeFrom" field.
  DateTime? _activeFrom;
  DateTime? get activeFrom => _activeFrom;
  bool hasActiveFrom() => _activeFrom != null;

  // "activeTo" field.
  DateTime? _activeTo;
  DateTime? get activeTo => _activeTo;
  bool hasActiveTo() => _activeTo != null;

  // "status" field.
  PassStatus? _status;
  PassStatus? get status => _status;
  bool hasStatus() => _status != null;

  // "hourseperday" field.
  double? _hourseperday;
  double get hourseperday => _hourseperday ?? 0.0;
  bool hasHourseperday() => _hourseperday != null;

  // "totalDays" field.
  int? _totalDays;
  int get totalDays => _totalDays ?? 0;
  bool hasTotalDays() => _totalDays != null;

  // "lapseddays" field.
  int? _lapseddays;
  int get lapseddays => _lapseddays ?? 0;
  bool hasLapseddays() => _lapseddays != null;

  // "passFee" field.
  double? _passFee;
  double get passFee => _passFee ?? 0.0;
  bool hasPassFee() => _passFee != null;

  // "registrationFee" field.
  double? _registrationFee;
  double get registrationFee => _registrationFee ?? 0.0;
  bool hasRegistrationFee() => _registrationFee != null;

  // "feeFrquency" field.
  String? _feeFrquency;
  String get feeFrquency => _feeFrquency ?? '';
  bool hasFeeFrquency() => _feeFrquency != null;

  // "memberDetails" field.
  StudioMembersStruct? _memberDetails;
  StudioMembersStruct get memberDetails =>
      _memberDetails ?? StudioMembersStruct();
  bool hasMemberDetails() => _memberDetails != null;

  // "issuedtoRef" field.
  DocumentReference? _issuedtoRef;
  DocumentReference? get issuedtoRef => _issuedtoRef;
  bool hasIssuedtoRef() => _issuedtoRef != null;

  // "passName" field.
  String? _passName;
  String get passName => _passName ?? '';
  bool hasPassName() => _passName != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _createdbyAdmin = snapshotData['createdbyAdmin'] as DocumentReference?;
    _refStudio = snapshotData['refStudio'] as DocumentReference?;
    _activeFrom = snapshotData['activeFrom'] as DateTime?;
    _activeTo = snapshotData['activeTo'] as DateTime?;
    _status = snapshotData['status'] is PassStatus
        ? snapshotData['status']
        : deserializeEnum<PassStatus>(snapshotData['status']);
    _hourseperday = castToType<double>(snapshotData['hourseperday']);
    _totalDays = castToType<int>(snapshotData['totalDays']);
    _lapseddays = castToType<int>(snapshotData['lapseddays']);
    _passFee = castToType<double>(snapshotData['passFee']);
    _registrationFee = castToType<double>(snapshotData['registrationFee']);
    _feeFrquency = snapshotData['feeFrquency'] as String?;
    _memberDetails = snapshotData['memberDetails'] is StudioMembersStruct
        ? snapshotData['memberDetails']
        : StudioMembersStruct.maybeFromMap(snapshotData['memberDetails']);
    _issuedtoRef = snapshotData['issuedtoRef'] as DocumentReference?;
    _passName = snapshotData['passName'] as String?;
    _description = snapshotData['Description'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('activePasses')
          : FirebaseFirestore.instance.collectionGroup('activePasses');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('activePasses').doc(id);

  static Stream<ActivePassesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ActivePassesRecord.fromSnapshot(s));

  static Future<ActivePassesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ActivePassesRecord.fromSnapshot(s));

  static ActivePassesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ActivePassesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ActivePassesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ActivePassesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ActivePassesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ActivePassesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createActivePassesRecordData({
  DateTime? createdAt,
  DocumentReference? createdbyAdmin,
  DocumentReference? refStudio,
  DateTime? activeFrom,
  DateTime? activeTo,
  PassStatus? status,
  double? hourseperday,
  int? totalDays,
  int? lapseddays,
  double? passFee,
  double? registrationFee,
  String? feeFrquency,
  StudioMembersStruct? memberDetails,
  DocumentReference? issuedtoRef,
  String? passName,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdAt': createdAt,
      'createdbyAdmin': createdbyAdmin,
      'refStudio': refStudio,
      'activeFrom': activeFrom,
      'activeTo': activeTo,
      'status': status,
      'hourseperday': hourseperday,
      'totalDays': totalDays,
      'lapseddays': lapseddays,
      'passFee': passFee,
      'registrationFee': registrationFee,
      'feeFrquency': feeFrquency,
      'memberDetails': StudioMembersStruct().toMap(),
      'issuedtoRef': issuedtoRef,
      'passName': passName,
      'Description': description,
    }.withoutNulls,
  );

  // Handle nested data for "memberDetails" field.
  addStudioMembersStructData(firestoreData, memberDetails, 'memberDetails');

  return firestoreData;
}

class ActivePassesRecordDocumentEquality
    implements Equality<ActivePassesRecord> {
  const ActivePassesRecordDocumentEquality();

  @override
  bool equals(ActivePassesRecord? e1, ActivePassesRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.createdbyAdmin == e2?.createdbyAdmin &&
        e1?.refStudio == e2?.refStudio &&
        e1?.activeFrom == e2?.activeFrom &&
        e1?.activeTo == e2?.activeTo &&
        e1?.status == e2?.status &&
        e1?.hourseperday == e2?.hourseperday &&
        e1?.totalDays == e2?.totalDays &&
        e1?.lapseddays == e2?.lapseddays &&
        e1?.passFee == e2?.passFee &&
        e1?.registrationFee == e2?.registrationFee &&
        e1?.feeFrquency == e2?.feeFrquency &&
        e1?.memberDetails == e2?.memberDetails &&
        e1?.issuedtoRef == e2?.issuedtoRef &&
        e1?.passName == e2?.passName &&
        e1?.description == e2?.description;
  }

  @override
  int hash(ActivePassesRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.createdbyAdmin,
        e?.refStudio,
        e?.activeFrom,
        e?.activeTo,
        e?.status,
        e?.hourseperday,
        e?.totalDays,
        e?.lapseddays,
        e?.passFee,
        e?.registrationFee,
        e?.feeFrquency,
        e?.memberDetails,
        e?.issuedtoRef,
        e?.passName,
        e?.description
      ]);

  @override
  bool isValidKey(Object? o) => o is ActivePassesRecord;
}
