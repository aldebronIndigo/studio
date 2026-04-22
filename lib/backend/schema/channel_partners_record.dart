import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChannelPartnersRecord extends FirestoreRecord {
  ChannelPartnersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "refClub" field.
  DocumentReference? _refClub;
  DocumentReference? get refClub => _refClub;
  bool hasRefClub() => _refClub != null;

  // "fullName" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  bool hasFullName() => _fullName != null;

  // "emailaddress" field.
  String? _emailaddress;
  String get emailaddress => _emailaddress ?? '';
  bool hasEmailaddress() => _emailaddress != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "profilePic" field.
  String? _profilePic;
  String get profilePic => _profilePic ?? '';
  bool hasProfilePic() => _profilePic != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "dob" field.
  DateTime? _dob;
  DateTime? get dob => _dob;
  bool hasDob() => _dob != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "cpType" field.
  String? _cpType;
  String get cpType => _cpType ?? '';
  bool hasCpType() => _cpType != null;

  // "officeVenue" field.
  String? _officeVenue;
  String get officeVenue => _officeVenue ?? '';
  bool hasOfficeVenue() => _officeVenue != null;

  // "officeAddress" field.
  String? _officeAddress;
  String get officeAddress => _officeAddress ?? '';
  bool hasOfficeAddress() => _officeAddress != null;

  // "officecity" field.
  String? _officecity;
  String get officecity => _officecity ?? '';
  bool hasOfficecity() => _officecity != null;

  // "officeState" field.
  String? _officeState;
  String get officeState => _officeState ?? '';
  bool hasOfficeState() => _officeState != null;

  // "officeCountry" field.
  String? _officeCountry;
  String get officeCountry => _officeCountry ?? '';
  bool hasOfficeCountry() => _officeCountry != null;

  // "officeZipCode" field.
  String? _officeZipCode;
  String get officeZipCode => _officeZipCode ?? '';
  bool hasOfficeZipCode() => _officeZipCode != null;

  // "officeEmail" field.
  String? _officeEmail;
  String get officeEmail => _officeEmail ?? '';
  bool hasOfficeEmail() => _officeEmail != null;

  // "addcontactNumber" field.
  String? _addcontactNumber;
  String get addcontactNumber => _addcontactNumber ?? '';
  bool hasAddcontactNumber() => _addcontactNumber != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "refUser" field.
  DocumentReference? _refUser;
  DocumentReference? get refUser => _refUser;
  bool hasRefUser() => _refUser != null;

  // "cpStatus" field.
  CpStatus? _cpStatus;
  CpStatus? get cpStatus => _cpStatus;
  bool hasCpStatus() => _cpStatus != null;

  // "uniqueCPCode" field.
  String? _uniqueCPCode;
  String get uniqueCPCode => _uniqueCPCode ?? '';
  bool hasUniqueCPCode() => _uniqueCPCode != null;

  // "officeLocation" field.
  LatLng? _officeLocation;
  LatLng? get officeLocation => _officeLocation;
  bool hasOfficeLocation() => _officeLocation != null;

  // "triyomPoints" field.
  int? _triyomPoints;
  int get triyomPoints => _triyomPoints ?? 0;
  bool hasTriyomPoints() => _triyomPoints != null;

  // "triyomBadges" field.
  int? _triyomBadges;
  int get triyomBadges => _triyomBadges ?? 0;
  bool hasTriyomBadges() => _triyomBadges != null;

  // "approvedat" field.
  DateTime? _approvedat;
  DateTime? get approvedat => _approvedat;
  bool hasApprovedat() => _approvedat != null;

  // "leadnumber" field.
  int? _leadnumber;
  int get leadnumber => _leadnumber ?? 0;
  bool hasLeadnumber() => _leadnumber != null;

  // "paymentNotes" field.
  List<CPPointTransactionsStruct>? _paymentNotes;
  List<CPPointTransactionsStruct> get paymentNotes => _paymentNotes ?? const [];
  bool hasPaymentNotes() => _paymentNotes != null;

  // "coinsTotal" field.
  int? _coinsTotal;
  int get coinsTotal => _coinsTotal ?? 0;
  bool hasCoinsTotal() => _coinsTotal != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _refClub = snapshotData['refClub'] as DocumentReference?;
    _fullName = snapshotData['fullName'] as String?;
    _emailaddress = snapshotData['emailaddress'] as String?;
    _phoneNumber = snapshotData['phoneNumber'] as String?;
    _profilePic = snapshotData['profilePic'] as String?;
    _gender = snapshotData['gender'] as String?;
    _dob = snapshotData['dob'] as DateTime?;
    _age = castToType<int>(snapshotData['age']);
    _cpType = snapshotData['cpType'] as String?;
    _officeVenue = snapshotData['officeVenue'] as String?;
    _officeAddress = snapshotData['officeAddress'] as String?;
    _officecity = snapshotData['officecity'] as String?;
    _officeState = snapshotData['officeState'] as String?;
    _officeCountry = snapshotData['officeCountry'] as String?;
    _officeZipCode = snapshotData['officeZipCode'] as String?;
    _officeEmail = snapshotData['officeEmail'] as String?;
    _addcontactNumber = snapshotData['addcontactNumber'] as String?;
    _website = snapshotData['website'] as String?;
    _refUser = snapshotData['refUser'] as DocumentReference?;
    _cpStatus = snapshotData['cpStatus'] is CpStatus
        ? snapshotData['cpStatus']
        : deserializeEnum<CpStatus>(snapshotData['cpStatus']);
    _uniqueCPCode = snapshotData['uniqueCPCode'] as String?;
    _officeLocation = snapshotData['officeLocation'] as LatLng?;
    _triyomPoints = castToType<int>(snapshotData['triyomPoints']);
    _triyomBadges = castToType<int>(snapshotData['triyomBadges']);
    _approvedat = snapshotData['approvedat'] as DateTime?;
    _leadnumber = castToType<int>(snapshotData['leadnumber']);
    _paymentNotes = getStructList(
      snapshotData['paymentNotes'],
      CPPointTransactionsStruct.fromMap,
    );
    _coinsTotal = castToType<int>(snapshotData['coinsTotal']);
    _amount = castToType<double>(snapshotData['amount']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('channelPartners')
          : FirebaseFirestore.instance.collectionGroup('channelPartners');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('channelPartners').doc(id);

  static Stream<ChannelPartnersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChannelPartnersRecord.fromSnapshot(s));

  static Future<ChannelPartnersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChannelPartnersRecord.fromSnapshot(s));

  static ChannelPartnersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChannelPartnersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChannelPartnersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChannelPartnersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChannelPartnersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChannelPartnersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChannelPartnersRecordData({
  DocumentReference? refClub,
  String? fullName,
  String? emailaddress,
  String? phoneNumber,
  String? profilePic,
  String? gender,
  DateTime? dob,
  int? age,
  String? cpType,
  String? officeVenue,
  String? officeAddress,
  String? officecity,
  String? officeState,
  String? officeCountry,
  String? officeZipCode,
  String? officeEmail,
  String? addcontactNumber,
  String? website,
  DocumentReference? refUser,
  CpStatus? cpStatus,
  String? uniqueCPCode,
  LatLng? officeLocation,
  int? triyomPoints,
  int? triyomBadges,
  DateTime? approvedat,
  int? leadnumber,
  int? coinsTotal,
  double? amount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'refClub': refClub,
      'fullName': fullName,
      'emailaddress': emailaddress,
      'phoneNumber': phoneNumber,
      'profilePic': profilePic,
      'gender': gender,
      'dob': dob,
      'age': age,
      'cpType': cpType,
      'officeVenue': officeVenue,
      'officeAddress': officeAddress,
      'officecity': officecity,
      'officeState': officeState,
      'officeCountry': officeCountry,
      'officeZipCode': officeZipCode,
      'officeEmail': officeEmail,
      'addcontactNumber': addcontactNumber,
      'website': website,
      'refUser': refUser,
      'cpStatus': cpStatus,
      'uniqueCPCode': uniqueCPCode,
      'officeLocation': officeLocation,
      'triyomPoints': triyomPoints,
      'triyomBadges': triyomBadges,
      'approvedat': approvedat,
      'leadnumber': leadnumber,
      'coinsTotal': coinsTotal,
      'amount': amount,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChannelPartnersRecordDocumentEquality
    implements Equality<ChannelPartnersRecord> {
  const ChannelPartnersRecordDocumentEquality();

  @override
  bool equals(ChannelPartnersRecord? e1, ChannelPartnersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.refClub == e2?.refClub &&
        e1?.fullName == e2?.fullName &&
        e1?.emailaddress == e2?.emailaddress &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.profilePic == e2?.profilePic &&
        e1?.gender == e2?.gender &&
        e1?.dob == e2?.dob &&
        e1?.age == e2?.age &&
        e1?.cpType == e2?.cpType &&
        e1?.officeVenue == e2?.officeVenue &&
        e1?.officeAddress == e2?.officeAddress &&
        e1?.officecity == e2?.officecity &&
        e1?.officeState == e2?.officeState &&
        e1?.officeCountry == e2?.officeCountry &&
        e1?.officeZipCode == e2?.officeZipCode &&
        e1?.officeEmail == e2?.officeEmail &&
        e1?.addcontactNumber == e2?.addcontactNumber &&
        e1?.website == e2?.website &&
        e1?.refUser == e2?.refUser &&
        e1?.cpStatus == e2?.cpStatus &&
        e1?.uniqueCPCode == e2?.uniqueCPCode &&
        e1?.officeLocation == e2?.officeLocation &&
        e1?.triyomPoints == e2?.triyomPoints &&
        e1?.triyomBadges == e2?.triyomBadges &&
        e1?.approvedat == e2?.approvedat &&
        e1?.leadnumber == e2?.leadnumber &&
        listEquality.equals(e1?.paymentNotes, e2?.paymentNotes) &&
        e1?.coinsTotal == e2?.coinsTotal &&
        e1?.amount == e2?.amount;
  }

  @override
  int hash(ChannelPartnersRecord? e) => const ListEquality().hash([
        e?.refClub,
        e?.fullName,
        e?.emailaddress,
        e?.phoneNumber,
        e?.profilePic,
        e?.gender,
        e?.dob,
        e?.age,
        e?.cpType,
        e?.officeVenue,
        e?.officeAddress,
        e?.officecity,
        e?.officeState,
        e?.officeCountry,
        e?.officeZipCode,
        e?.officeEmail,
        e?.addcontactNumber,
        e?.website,
        e?.refUser,
        e?.cpStatus,
        e?.uniqueCPCode,
        e?.officeLocation,
        e?.triyomPoints,
        e?.triyomBadges,
        e?.approvedat,
        e?.leadnumber,
        e?.paymentNotes,
        e?.coinsTotal,
        e?.amount
      ]);

  @override
  bool isValidKey(Object? o) => o is ChannelPartnersRecord;
}
