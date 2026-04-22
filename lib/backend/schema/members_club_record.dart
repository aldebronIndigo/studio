import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MembersClubRecord extends FirestoreRecord {
  MembersClubRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "refUser" field.
  DocumentReference? _refUser;
  DocumentReference? get refUser => _refUser;
  bool hasRefUser() => _refUser != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "venue" field.
  String? _venue;
  String get venue => _venue ?? '';
  bool hasVenue() => _venue != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "zipCode" field.
  String? _zipCode;
  String get zipCode => _zipCode ?? '';
  bool hasZipCode() => _zipCode != null;

  // "createdat" field.
  DateTime? _createdat;
  DateTime? get createdat => _createdat;
  bool hasCreatedat() => _createdat != null;

  // "slab" field.
  int? _slab;
  int get slab => _slab ?? 0;
  bool hasSlab() => _slab != null;

  // "referralType" field.
  String? _referralType;
  String get referralType => _referralType ?? '';
  bool hasReferralType() => _referralType != null;

  // "paymentPlan" field.
  String? _paymentPlan;
  String get paymentPlan => _paymentPlan ?? '';
  bool hasPaymentPlan() => _paymentPlan != null;

  // "paymentStatus" field.
  String? _paymentStatus;
  String get paymentStatus => _paymentStatus ?? '';
  bool hasPaymentStatus() => _paymentStatus != null;

  // "CardNumber" field.
  String? _cardNumber;
  String get cardNumber => _cardNumber ?? '';
  bool hasCardNumber() => _cardNumber != null;

  // "notes" field.
  List<PaymentNotesStruct>? _notes;
  List<PaymentNotesStruct> get notes => _notes ?? const [];
  bool hasNotes() => _notes != null;

  // "memberStatus" field.
  MemberStatus? _memberStatus;
  MemberStatus? get memberStatus => _memberStatus;
  bool hasMemberStatus() => _memberStatus != null;

  // "referralID" field.
  String? _referralID;
  String get referralID => _referralID ?? '';
  bool hasReferralID() => _referralID != null;

  // "profilePic" field.
  String? _profilePic;
  String get profilePic => _profilePic ?? '';
  bool hasProfilePic() => _profilePic != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "dateofBirth" field.
  DateTime? _dateofBirth;
  DateTime? get dateofBirth => _dateofBirth;
  bool hasDateofBirth() => _dateofBirth != null;

  // "profession" field.
  String? _profession;
  String get profession => _profession ?? '';
  bool hasProfession() => _profession != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "intro" field.
  String? _intro;
  String get intro => _intro ?? '';
  bool hasIntro() => _intro != null;

  // "triyomPoints" field.
  int? _triyomPoints;
  int get triyomPoints => _triyomPoints ?? 0;
  bool hasTriyomPoints() => _triyomPoints != null;

  // "badges" field.
  int? _badges;
  int get badges => _badges ?? 0;
  bool hasBadges() => _badges != null;

  // "triyomCoins" field.
  int? _triyomCoins;
  int get triyomCoins => _triyomCoins ?? 0;
  bool hasTriyomCoins() => _triyomCoins != null;

  // "maxEvents" field.
  int? _maxEvents;
  int get maxEvents => _maxEvents ?? 0;
  bool hasMaxEvents() => _maxEvents != null;

  // "maxGroups" field.
  int? _maxGroups;
  int get maxGroups => _maxGroups ?? 0;
  bool hasMaxGroups() => _maxGroups != null;

  // "cpRef" field.
  DocumentReference? _cpRef;
  DocumentReference? get cpRef => _cpRef;
  bool hasCpRef() => _cpRef != null;

  // "formattedCardNumber" field.
  String? _formattedCardNumber;
  String get formattedCardNumber => _formattedCardNumber ?? '';
  bool hasFormattedCardNumber() => _formattedCardNumber != null;

  // "amountPaid" field.
  double? _amountPaid;
  double get amountPaid => _amountPaid ?? 0.0;
  bool hasAmountPaid() => _amountPaid != null;

  // "maxguestPass" field.
  int? _maxguestPass;
  int get maxguestPass => _maxguestPass ?? 0;
  bool hasMaxguestPass() => _maxguestPass != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _refUser = snapshotData['refUser'] as DocumentReference?;
    _name = snapshotData['Name'] as String?;
    _email = snapshotData['email'] as String?;
    _phone = snapshotData['phone'] as String?;
    _venue = snapshotData['venue'] as String?;
    _address = snapshotData['address'] as String?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _country = snapshotData['country'] as String?;
    _zipCode = snapshotData['zipCode'] as String?;
    _createdat = snapshotData['createdat'] as DateTime?;
    _slab = castToType<int>(snapshotData['slab']);
    _referralType = snapshotData['referralType'] as String?;
    _paymentPlan = snapshotData['paymentPlan'] as String?;
    _paymentStatus = snapshotData['paymentStatus'] as String?;
    _cardNumber = snapshotData['CardNumber'] as String?;
    _notes = getStructList(
      snapshotData['notes'],
      PaymentNotesStruct.fromMap,
    );
    _memberStatus = snapshotData['memberStatus'] is MemberStatus
        ? snapshotData['memberStatus']
        : deserializeEnum<MemberStatus>(snapshotData['memberStatus']);
    _referralID = snapshotData['referralID'] as String?;
    _profilePic = snapshotData['profilePic'] as String?;
    _gender = snapshotData['gender'] as String?;
    _dateofBirth = snapshotData['dateofBirth'] as DateTime?;
    _profession = snapshotData['profession'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _intro = snapshotData['intro'] as String?;
    _triyomPoints = castToType<int>(snapshotData['triyomPoints']);
    _badges = castToType<int>(snapshotData['badges']);
    _triyomCoins = castToType<int>(snapshotData['triyomCoins']);
    _maxEvents = castToType<int>(snapshotData['maxEvents']);
    _maxGroups = castToType<int>(snapshotData['maxGroups']);
    _cpRef = snapshotData['cpRef'] as DocumentReference?;
    _formattedCardNumber = snapshotData['formattedCardNumber'] as String?;
    _amountPaid = castToType<double>(snapshotData['amountPaid']);
    _maxguestPass = castToType<int>(snapshotData['maxguestPass']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('MembersClub')
          : FirebaseFirestore.instance.collectionGroup('MembersClub');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('MembersClub').doc(id);

  static Stream<MembersClubRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MembersClubRecord.fromSnapshot(s));

  static Future<MembersClubRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MembersClubRecord.fromSnapshot(s));

  static MembersClubRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MembersClubRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MembersClubRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MembersClubRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MembersClubRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MembersClubRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMembersClubRecordData({
  DocumentReference? refUser,
  String? name,
  String? email,
  String? phone,
  String? venue,
  String? address,
  String? city,
  String? state,
  String? country,
  String? zipCode,
  DateTime? createdat,
  int? slab,
  String? referralType,
  String? paymentPlan,
  String? paymentStatus,
  String? cardNumber,
  MemberStatus? memberStatus,
  String? referralID,
  String? profilePic,
  String? gender,
  DateTime? dateofBirth,
  String? profession,
  int? age,
  String? intro,
  int? triyomPoints,
  int? badges,
  int? triyomCoins,
  int? maxEvents,
  int? maxGroups,
  DocumentReference? cpRef,
  String? formattedCardNumber,
  double? amountPaid,
  int? maxguestPass,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'refUser': refUser,
      'Name': name,
      'email': email,
      'phone': phone,
      'venue': venue,
      'address': address,
      'city': city,
      'state': state,
      'country': country,
      'zipCode': zipCode,
      'createdat': createdat,
      'slab': slab,
      'referralType': referralType,
      'paymentPlan': paymentPlan,
      'paymentStatus': paymentStatus,
      'CardNumber': cardNumber,
      'memberStatus': memberStatus,
      'referralID': referralID,
      'profilePic': profilePic,
      'gender': gender,
      'dateofBirth': dateofBirth,
      'profession': profession,
      'age': age,
      'intro': intro,
      'triyomPoints': triyomPoints,
      'badges': badges,
      'triyomCoins': triyomCoins,
      'maxEvents': maxEvents,
      'maxGroups': maxGroups,
      'cpRef': cpRef,
      'formattedCardNumber': formattedCardNumber,
      'amountPaid': amountPaid,
      'maxguestPass': maxguestPass,
    }.withoutNulls,
  );

  return firestoreData;
}

class MembersClubRecordDocumentEquality implements Equality<MembersClubRecord> {
  const MembersClubRecordDocumentEquality();

  @override
  bool equals(MembersClubRecord? e1, MembersClubRecord? e2) {
    const listEquality = ListEquality();
    return e1?.refUser == e2?.refUser &&
        e1?.name == e2?.name &&
        e1?.email == e2?.email &&
        e1?.phone == e2?.phone &&
        e1?.venue == e2?.venue &&
        e1?.address == e2?.address &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.country == e2?.country &&
        e1?.zipCode == e2?.zipCode &&
        e1?.createdat == e2?.createdat &&
        e1?.slab == e2?.slab &&
        e1?.referralType == e2?.referralType &&
        e1?.paymentPlan == e2?.paymentPlan &&
        e1?.paymentStatus == e2?.paymentStatus &&
        e1?.cardNumber == e2?.cardNumber &&
        listEquality.equals(e1?.notes, e2?.notes) &&
        e1?.memberStatus == e2?.memberStatus &&
        e1?.referralID == e2?.referralID &&
        e1?.profilePic == e2?.profilePic &&
        e1?.gender == e2?.gender &&
        e1?.dateofBirth == e2?.dateofBirth &&
        e1?.profession == e2?.profession &&
        e1?.age == e2?.age &&
        e1?.intro == e2?.intro &&
        e1?.triyomPoints == e2?.triyomPoints &&
        e1?.badges == e2?.badges &&
        e1?.triyomCoins == e2?.triyomCoins &&
        e1?.maxEvents == e2?.maxEvents &&
        e1?.maxGroups == e2?.maxGroups &&
        e1?.cpRef == e2?.cpRef &&
        e1?.formattedCardNumber == e2?.formattedCardNumber &&
        e1?.amountPaid == e2?.amountPaid &&
        e1?.maxguestPass == e2?.maxguestPass;
  }

  @override
  int hash(MembersClubRecord? e) => const ListEquality().hash([
        e?.refUser,
        e?.name,
        e?.email,
        e?.phone,
        e?.venue,
        e?.address,
        e?.city,
        e?.state,
        e?.country,
        e?.zipCode,
        e?.createdat,
        e?.slab,
        e?.referralType,
        e?.paymentPlan,
        e?.paymentStatus,
        e?.cardNumber,
        e?.notes,
        e?.memberStatus,
        e?.referralID,
        e?.profilePic,
        e?.gender,
        e?.dateofBirth,
        e?.profession,
        e?.age,
        e?.intro,
        e?.triyomPoints,
        e?.badges,
        e?.triyomCoins,
        e?.maxEvents,
        e?.maxGroups,
        e?.cpRef,
        e?.formattedCardNumber,
        e?.amountPaid,
        e?.maxguestPass
      ]);

  @override
  bool isValidKey(Object? o) => o is MembersClubRecord;
}
