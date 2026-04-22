import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MemberPassesRecord extends FirestoreRecord {
  MemberPassesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "issuedby" field.
  DocumentReference? _issuedby;
  DocumentReference? get issuedby => _issuedby;
  bool hasIssuedby() => _issuedby != null;

  // "issuedbyName" field.
  String? _issuedbyName;
  String get issuedbyName => _issuedbyName ?? '';
  bool hasIssuedbyName() => _issuedbyName != null;

  // "issuedbyProfilePic" field.
  String? _issuedbyProfilePic;
  String get issuedbyProfilePic => _issuedbyProfilePic ?? '';
  bool hasIssuedbyProfilePic() => _issuedbyProfilePic != null;

  // "issuedtoRef" field.
  DocumentReference? _issuedtoRef;
  DocumentReference? get issuedtoRef => _issuedtoRef;
  bool hasIssuedtoRef() => _issuedtoRef != null;

  // "issuedtoName" field.
  String? _issuedtoName;
  String get issuedtoName => _issuedtoName ?? '';
  bool hasIssuedtoName() => _issuedtoName != null;

  // "validDate" field.
  DateTime? _validDate;
  DateTime? get validDate => _validDate;
  bool hasValidDate() => _validDate != null;

  // "validFrom" field.
  DateTime? _validFrom;
  DateTime? get validFrom => _validFrom;
  bool hasValidFrom() => _validFrom != null;

  // "validTo" field.
  DateTime? _validTo;
  DateTime? get validTo => _validTo;
  bool hasValidTo() => _validTo != null;

  // "status" field.
  PassStatus? _status;
  PassStatus? get status => _status;
  bool hasStatus() => _status != null;

  // "entryTime" field.
  DateTime? _entryTime;
  DateTime? get entryTime => _entryTime;
  bool hasEntryTime() => _entryTime != null;

  // "entryPoint" field.
  LatLng? _entryPoint;
  LatLng? get entryPoint => _entryPoint;
  bool hasEntryPoint() => _entryPoint != null;

  // "accompaniedPerson" field.
  int? _accompaniedPerson;
  int get accompaniedPerson => _accompaniedPerson ?? 0;
  bool hasAccompaniedPerson() => _accompaniedPerson != null;

  // "vehicleNumber" field.
  String? _vehicleNumber;
  String get vehicleNumber => _vehicleNumber ?? '';
  bool hasVehicleNumber() => _vehicleNumber != null;

  // "designatedParking" field.
  String? _designatedParking;
  String get designatedParking => _designatedParking ?? '';
  bool hasDesignatedParking() => _designatedParking != null;

  // "transferable" field.
  bool? _transferable;
  bool get transferable => _transferable ?? false;
  bool hasTransferable() => _transferable != null;

  // "issuedAt" field.
  DateTime? _issuedAt;
  DateTime? get issuedAt => _issuedAt;
  bool hasIssuedAt() => _issuedAt != null;

  // "transferChain" field.
  List<TransferDataSetStruct>? _transferChain;
  List<TransferDataSetStruct> get transferChain => _transferChain ?? const [];
  bool hasTransferChain() => _transferChain != null;

  // "maxTransfer" field.
  int? _maxTransfer;
  int get maxTransfer => _maxTransfer ?? 0;
  bool hasMaxTransfer() => _maxTransfer != null;

  // "placeName" field.
  String? _placeName;
  String get placeName => _placeName ?? '';
  bool hasPlaceName() => _placeName != null;

  // "instructions" field.
  String? _instructions;
  String get instructions => _instructions ?? '';
  bool hasInstructions() => _instructions != null;

  // "memberCardNumber" field.
  String? _memberCardNumber;
  String get memberCardNumber => _memberCardNumber ?? '';
  bool hasMemberCardNumber() => _memberCardNumber != null;

  // "passID" field.
  String? _passID;
  String get passID => _passID ?? '';
  bool hasPassID() => _passID != null;

  // "guestprofilePic" field.
  String? _guestprofilePic;
  String get guestprofilePic => _guestprofilePic ?? '';
  bool hasGuestprofilePic() => _guestprofilePic != null;

  // "passType" field.
  PassType? _passType;
  PassType? get passType => _passType;
  bool hasPassType() => _passType != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _issuedby = snapshotData['issuedby'] as DocumentReference?;
    _issuedbyName = snapshotData['issuedbyName'] as String?;
    _issuedbyProfilePic = snapshotData['issuedbyProfilePic'] as String?;
    _issuedtoRef = snapshotData['issuedtoRef'] as DocumentReference?;
    _issuedtoName = snapshotData['issuedtoName'] as String?;
    _validDate = snapshotData['validDate'] as DateTime?;
    _validFrom = snapshotData['validFrom'] as DateTime?;
    _validTo = snapshotData['validTo'] as DateTime?;
    _status = snapshotData['status'] is PassStatus
        ? snapshotData['status']
        : deserializeEnum<PassStatus>(snapshotData['status']);
    _entryTime = snapshotData['entryTime'] as DateTime?;
    _entryPoint = snapshotData['entryPoint'] as LatLng?;
    _accompaniedPerson = castToType<int>(snapshotData['accompaniedPerson']);
    _vehicleNumber = snapshotData['vehicleNumber'] as String?;
    _designatedParking = snapshotData['designatedParking'] as String?;
    _transferable = snapshotData['transferable'] as bool?;
    _issuedAt = snapshotData['issuedAt'] as DateTime?;
    _transferChain = getStructList(
      snapshotData['transferChain'],
      TransferDataSetStruct.fromMap,
    );
    _maxTransfer = castToType<int>(snapshotData['maxTransfer']);
    _placeName = snapshotData['placeName'] as String?;
    _instructions = snapshotData['instructions'] as String?;
    _memberCardNumber = snapshotData['memberCardNumber'] as String?;
    _passID = snapshotData['passID'] as String?;
    _guestprofilePic = snapshotData['guestprofilePic'] as String?;
    _passType = snapshotData['passType'] is PassType
        ? snapshotData['passType']
        : deserializeEnum<PassType>(snapshotData['passType']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('memberPasses')
          : FirebaseFirestore.instance.collectionGroup('memberPasses');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('memberPasses').doc(id);

  static Stream<MemberPassesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MemberPassesRecord.fromSnapshot(s));

  static Future<MemberPassesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MemberPassesRecord.fromSnapshot(s));

  static MemberPassesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MemberPassesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MemberPassesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MemberPassesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MemberPassesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MemberPassesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMemberPassesRecordData({
  DocumentReference? issuedby,
  String? issuedbyName,
  String? issuedbyProfilePic,
  DocumentReference? issuedtoRef,
  String? issuedtoName,
  DateTime? validDate,
  DateTime? validFrom,
  DateTime? validTo,
  PassStatus? status,
  DateTime? entryTime,
  LatLng? entryPoint,
  int? accompaniedPerson,
  String? vehicleNumber,
  String? designatedParking,
  bool? transferable,
  DateTime? issuedAt,
  int? maxTransfer,
  String? placeName,
  String? instructions,
  String? memberCardNumber,
  String? passID,
  String? guestprofilePic,
  PassType? passType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'issuedby': issuedby,
      'issuedbyName': issuedbyName,
      'issuedbyProfilePic': issuedbyProfilePic,
      'issuedtoRef': issuedtoRef,
      'issuedtoName': issuedtoName,
      'validDate': validDate,
      'validFrom': validFrom,
      'validTo': validTo,
      'status': status,
      'entryTime': entryTime,
      'entryPoint': entryPoint,
      'accompaniedPerson': accompaniedPerson,
      'vehicleNumber': vehicleNumber,
      'designatedParking': designatedParking,
      'transferable': transferable,
      'issuedAt': issuedAt,
      'maxTransfer': maxTransfer,
      'placeName': placeName,
      'instructions': instructions,
      'memberCardNumber': memberCardNumber,
      'passID': passID,
      'guestprofilePic': guestprofilePic,
      'passType': passType,
    }.withoutNulls,
  );

  return firestoreData;
}

class MemberPassesRecordDocumentEquality
    implements Equality<MemberPassesRecord> {
  const MemberPassesRecordDocumentEquality();

  @override
  bool equals(MemberPassesRecord? e1, MemberPassesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.issuedby == e2?.issuedby &&
        e1?.issuedbyName == e2?.issuedbyName &&
        e1?.issuedbyProfilePic == e2?.issuedbyProfilePic &&
        e1?.issuedtoRef == e2?.issuedtoRef &&
        e1?.issuedtoName == e2?.issuedtoName &&
        e1?.validDate == e2?.validDate &&
        e1?.validFrom == e2?.validFrom &&
        e1?.validTo == e2?.validTo &&
        e1?.status == e2?.status &&
        e1?.entryTime == e2?.entryTime &&
        e1?.entryPoint == e2?.entryPoint &&
        e1?.accompaniedPerson == e2?.accompaniedPerson &&
        e1?.vehicleNumber == e2?.vehicleNumber &&
        e1?.designatedParking == e2?.designatedParking &&
        e1?.transferable == e2?.transferable &&
        e1?.issuedAt == e2?.issuedAt &&
        listEquality.equals(e1?.transferChain, e2?.transferChain) &&
        e1?.maxTransfer == e2?.maxTransfer &&
        e1?.placeName == e2?.placeName &&
        e1?.instructions == e2?.instructions &&
        e1?.memberCardNumber == e2?.memberCardNumber &&
        e1?.passID == e2?.passID &&
        e1?.guestprofilePic == e2?.guestprofilePic &&
        e1?.passType == e2?.passType;
  }

  @override
  int hash(MemberPassesRecord? e) => const ListEquality().hash([
        e?.issuedby,
        e?.issuedbyName,
        e?.issuedbyProfilePic,
        e?.issuedtoRef,
        e?.issuedtoName,
        e?.validDate,
        e?.validFrom,
        e?.validTo,
        e?.status,
        e?.entryTime,
        e?.entryPoint,
        e?.accompaniedPerson,
        e?.vehicleNumber,
        e?.designatedParking,
        e?.transferable,
        e?.issuedAt,
        e?.transferChain,
        e?.maxTransfer,
        e?.placeName,
        e?.instructions,
        e?.memberCardNumber,
        e?.passID,
        e?.guestprofilePic,
        e?.passType
      ]);

  @override
  bool isValidKey(Object? o) => o is MemberPassesRecord;
}
