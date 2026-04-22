import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "dateofBirth" field.
  DateTime? _dateofBirth;
  DateTime? get dateofBirth => _dateofBirth;
  bool hasDateofBirth() => _dateofBirth != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "profession" field.
  String? _profession;
  String get profession => _profession ?? '';
  bool hasProfession() => _profession != null;

  // "intro" field.
  String? _intro;
  String get intro => _intro ?? '';
  bool hasIntro() => _intro != null;

  // "interests" field.
  List<String>? _interests;
  List<String> get interests => _interests ?? const [];
  bool hasInterests() => _interests != null;

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

  // "latLang" field.
  LatLng? _latLang;
  LatLng? get latLang => _latLang;
  bool hasLatLang() => _latLang != null;

  // "emailverified" field.
  bool? _emailverified;
  bool get emailverified => _emailverified ?? false;
  bool hasEmailverified() => _emailverified != null;

  // "phoneverified" field.
  bool? _phoneverified;
  bool get phoneverified => _phoneverified ?? false;
  bool hasPhoneverified() => _phoneverified != null;

  // "profileVerified" field.
  bool? _profileVerified;
  bool get profileVerified => _profileVerified ?? false;
  bool hasProfileVerified() => _profileVerified != null;

  // "memberType" field.
  String? _memberType;
  String get memberType => _memberType ?? '';
  bool hasMemberType() => _memberType != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "triyomPoints" field.
  int? _triyomPoints;
  int get triyomPoints => _triyomPoints ?? 0;
  bool hasTriyomPoints() => _triyomPoints != null;

  // "diamonds" field.
  int? _diamonds;
  int get diamonds => _diamonds ?? 0;
  bool hasDiamonds() => _diamonds != null;

  // "maxGroups" field.
  int? _maxGroups;
  int get maxGroups => _maxGroups ?? 0;
  bool hasMaxGroups() => _maxGroups != null;

  // "maxEvents" field.
  int? _maxEvents;
  int get maxEvents => _maxEvents ?? 0;
  bool hasMaxEvents() => _maxEvents != null;

  // "randomOTP" field.
  int? _randomOTP;
  int get randomOTP => _randomOTP ?? 0;
  bool hasRandomOTP() => _randomOTP != null;

  // "memberCode" field.
  String? _memberCode;
  String get memberCode => _memberCode ?? '';
  bool hasMemberCode() => _memberCode != null;

  // "level" field.
  String? _level;
  String get level => _level ?? '';
  bool hasLevel() => _level != null;

  // "slabNumber" field.
  int? _slabNumber;
  int get slabNumber => _slabNumber ?? 0;
  bool hasSlabNumber() => _slabNumber != null;

  // "acquisitionType" field.
  int? _acquisitionType;
  int get acquisitionType => _acquisitionType ?? 0;
  bool hasAcquisitionType() => _acquisitionType != null;

  // "referral" field.
  String? _referral;
  String get referral => _referral ?? '';
  bool hasReferral() => _referral != null;

  // "referradby" field.
  String? _referradby;
  String get referradby => _referradby ?? '';
  bool hasReferradby() => _referradby != null;

  // "maritalStatus" field.
  String? _maritalStatus;
  String get maritalStatus => _maritalStatus ?? '';
  bool hasMaritalStatus() => _maritalStatus != null;

  // "clusterCode" field.
  String? _clusterCode;
  String get clusterCode => _clusterCode ?? '';
  bool hasClusterCode() => _clusterCode != null;

  // "refClubs" field.
  List<DocumentReference>? _refClubs;
  List<DocumentReference> get refClubs => _refClubs ?? const [];
  bool hasRefClubs() => _refClubs != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "cpRef" field.
  List<DocumentReference>? _cpRef;
  List<DocumentReference> get cpRef => _cpRef ?? const [];
  bool hasCpRef() => _cpRef != null;

  // "bloodGroup" field.
  String? _bloodGroup;
  String get bloodGroup => _bloodGroup ?? '';
  bool hasBloodGroup() => _bloodGroup != null;

  // "emergperson1" field.
  String? _emergperson1;
  String get emergperson1 => _emergperson1 ?? '';
  bool hasEmergperson1() => _emergperson1 != null;

  // "emergconntact1" field.
  String? _emergconntact1;
  String get emergconntact1 => _emergconntact1 ?? '';
  bool hasEmergconntact1() => _emergconntact1 != null;

  // "emerRelat1" field.
  String? _emerRelat1;
  String get emerRelat1 => _emerRelat1 ?? '';
  bool hasEmerRelat1() => _emerRelat1 != null;

  // "emerperson2" field.
  String? _emerperson2;
  String get emerperson2 => _emerperson2 ?? '';
  bool hasEmerperson2() => _emerperson2 != null;

  // "emerContact2" field.
  String? _emerContact2;
  String get emerContact2 => _emerContact2 ?? '';
  bool hasEmerContact2() => _emerContact2 != null;

  // "emerRelat2" field.
  String? _emerRelat2;
  String get emerRelat2 => _emerRelat2 ?? '';
  bool hasEmerRelat2() => _emerRelat2 != null;

  // "medicalConditions" field.
  String? _medicalConditions;
  String get medicalConditions => _medicalConditions ?? '';
  bool hasMedicalConditions() => _medicalConditions != null;

  // "allergies" field.
  String? _allergies;
  String get allergies => _allergies ?? '';
  bool hasAllergies() => _allergies != null;

  // "consent" field.
  bool? _consent;
  bool get consent => _consent ?? false;
  bool hasConsent() => _consent != null;

  // "birthday" field.
  String? _birthday;
  String get birthday => _birthday ?? '';
  bool hasBirthday() => _birthday != null;

  // "trialdays" field.
  int? _trialdays;
  int get trialdays => _trialdays ?? 0;
  bool hasTrialdays() => _trialdays != null;

  // "maxchallenges" field.
  int? _maxchallenges;
  int get maxchallenges => _maxchallenges ?? 0;
  bool hasMaxchallenges() => _maxchallenges != null;

  // "refStudio" field.
  List<DocumentReference>? _refStudio;
  List<DocumentReference> get refStudio => _refStudio ?? const [];
  bool hasRefStudio() => _refStudio != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _gender = snapshotData['gender'] as String?;
    _dateofBirth = snapshotData['dateofBirth'] as DateTime?;
    _age = castToType<int>(snapshotData['age']);
    _profession = snapshotData['profession'] as String?;
    _intro = snapshotData['intro'] as String?;
    _interests = getDataList(snapshotData['interests']);
    _venue = snapshotData['venue'] as String?;
    _address = snapshotData['address'] as String?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _country = snapshotData['country'] as String?;
    _zipCode = snapshotData['zipCode'] as String?;
    _latLang = snapshotData['latLang'] as LatLng?;
    _emailverified = snapshotData['emailverified'] as bool?;
    _phoneverified = snapshotData['phoneverified'] as bool?;
    _profileVerified = snapshotData['profileVerified'] as bool?;
    _memberType = snapshotData['memberType'] as String?;
    _status = snapshotData['status'] as String?;
    _triyomPoints = castToType<int>(snapshotData['triyomPoints']);
    _diamonds = castToType<int>(snapshotData['diamonds']);
    _maxGroups = castToType<int>(snapshotData['maxGroups']);
    _maxEvents = castToType<int>(snapshotData['maxEvents']);
    _randomOTP = castToType<int>(snapshotData['randomOTP']);
    _memberCode = snapshotData['memberCode'] as String?;
    _level = snapshotData['level'] as String?;
    _slabNumber = castToType<int>(snapshotData['slabNumber']);
    _acquisitionType = castToType<int>(snapshotData['acquisitionType']);
    _referral = snapshotData['referral'] as String?;
    _referradby = snapshotData['referradby'] as String?;
    _maritalStatus = snapshotData['maritalStatus'] as String?;
    _clusterCode = snapshotData['clusterCode'] as String?;
    _refClubs = getDataList(snapshotData['refClubs']);
    _firstName = snapshotData['firstName'] as String?;
    _lastName = snapshotData['lastName'] as String?;
    _cpRef = getDataList(snapshotData['cpRef']);
    _bloodGroup = snapshotData['bloodGroup'] as String?;
    _emergperson1 = snapshotData['emergperson1'] as String?;
    _emergconntact1 = snapshotData['emergconntact1'] as String?;
    _emerRelat1 = snapshotData['emerRelat1'] as String?;
    _emerperson2 = snapshotData['emerperson2'] as String?;
    _emerContact2 = snapshotData['emerContact2'] as String?;
    _emerRelat2 = snapshotData['emerRelat2'] as String?;
    _medicalConditions = snapshotData['medicalConditions'] as String?;
    _allergies = snapshotData['allergies'] as String?;
    _consent = snapshotData['consent'] as bool?;
    _birthday = snapshotData['birthday'] as String?;
    _trialdays = castToType<int>(snapshotData['trialdays']);
    _maxchallenges = castToType<int>(snapshotData['maxchallenges']);
    _refStudio = getDataList(snapshotData['refStudio']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? gender,
  DateTime? dateofBirth,
  int? age,
  String? profession,
  String? intro,
  String? venue,
  String? address,
  String? city,
  String? state,
  String? country,
  String? zipCode,
  LatLng? latLang,
  bool? emailverified,
  bool? phoneverified,
  bool? profileVerified,
  String? memberType,
  String? status,
  int? triyomPoints,
  int? diamonds,
  int? maxGroups,
  int? maxEvents,
  int? randomOTP,
  String? memberCode,
  String? level,
  int? slabNumber,
  int? acquisitionType,
  String? referral,
  String? referradby,
  String? maritalStatus,
  String? clusterCode,
  String? firstName,
  String? lastName,
  String? bloodGroup,
  String? emergperson1,
  String? emergconntact1,
  String? emerRelat1,
  String? emerperson2,
  String? emerContact2,
  String? emerRelat2,
  String? medicalConditions,
  String? allergies,
  bool? consent,
  String? birthday,
  int? trialdays,
  int? maxchallenges,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'gender': gender,
      'dateofBirth': dateofBirth,
      'age': age,
      'profession': profession,
      'intro': intro,
      'venue': venue,
      'address': address,
      'city': city,
      'state': state,
      'country': country,
      'zipCode': zipCode,
      'latLang': latLang,
      'emailverified': emailverified,
      'phoneverified': phoneverified,
      'profileVerified': profileVerified,
      'memberType': memberType,
      'status': status,
      'triyomPoints': triyomPoints,
      'diamonds': diamonds,
      'maxGroups': maxGroups,
      'maxEvents': maxEvents,
      'randomOTP': randomOTP,
      'memberCode': memberCode,
      'level': level,
      'slabNumber': slabNumber,
      'acquisitionType': acquisitionType,
      'referral': referral,
      'referradby': referradby,
      'maritalStatus': maritalStatus,
      'clusterCode': clusterCode,
      'firstName': firstName,
      'lastName': lastName,
      'bloodGroup': bloodGroup,
      'emergperson1': emergperson1,
      'emergconntact1': emergconntact1,
      'emerRelat1': emerRelat1,
      'emerperson2': emerperson2,
      'emerContact2': emerContact2,
      'emerRelat2': emerRelat2,
      'medicalConditions': medicalConditions,
      'allergies': allergies,
      'consent': consent,
      'birthday': birthday,
      'trialdays': trialdays,
      'maxchallenges': maxchallenges,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.gender == e2?.gender &&
        e1?.dateofBirth == e2?.dateofBirth &&
        e1?.age == e2?.age &&
        e1?.profession == e2?.profession &&
        e1?.intro == e2?.intro &&
        listEquality.equals(e1?.interests, e2?.interests) &&
        e1?.venue == e2?.venue &&
        e1?.address == e2?.address &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.country == e2?.country &&
        e1?.zipCode == e2?.zipCode &&
        e1?.latLang == e2?.latLang &&
        e1?.emailverified == e2?.emailverified &&
        e1?.phoneverified == e2?.phoneverified &&
        e1?.profileVerified == e2?.profileVerified &&
        e1?.memberType == e2?.memberType &&
        e1?.status == e2?.status &&
        e1?.triyomPoints == e2?.triyomPoints &&
        e1?.diamonds == e2?.diamonds &&
        e1?.maxGroups == e2?.maxGroups &&
        e1?.maxEvents == e2?.maxEvents &&
        e1?.randomOTP == e2?.randomOTP &&
        e1?.memberCode == e2?.memberCode &&
        e1?.level == e2?.level &&
        e1?.slabNumber == e2?.slabNumber &&
        e1?.acquisitionType == e2?.acquisitionType &&
        e1?.referral == e2?.referral &&
        e1?.referradby == e2?.referradby &&
        e1?.maritalStatus == e2?.maritalStatus &&
        e1?.clusterCode == e2?.clusterCode &&
        listEquality.equals(e1?.refClubs, e2?.refClubs) &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        listEquality.equals(e1?.cpRef, e2?.cpRef) &&
        e1?.bloodGroup == e2?.bloodGroup &&
        e1?.emergperson1 == e2?.emergperson1 &&
        e1?.emergconntact1 == e2?.emergconntact1 &&
        e1?.emerRelat1 == e2?.emerRelat1 &&
        e1?.emerperson2 == e2?.emerperson2 &&
        e1?.emerContact2 == e2?.emerContact2 &&
        e1?.emerRelat2 == e2?.emerRelat2 &&
        e1?.medicalConditions == e2?.medicalConditions &&
        e1?.allergies == e2?.allergies &&
        e1?.consent == e2?.consent &&
        e1?.birthday == e2?.birthday &&
        e1?.trialdays == e2?.trialdays &&
        e1?.maxchallenges == e2?.maxchallenges &&
        listEquality.equals(e1?.refStudio, e2?.refStudio);
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.gender,
        e?.dateofBirth,
        e?.age,
        e?.profession,
        e?.intro,
        e?.interests,
        e?.venue,
        e?.address,
        e?.city,
        e?.state,
        e?.country,
        e?.zipCode,
        e?.latLang,
        e?.emailverified,
        e?.phoneverified,
        e?.profileVerified,
        e?.memberType,
        e?.status,
        e?.triyomPoints,
        e?.diamonds,
        e?.maxGroups,
        e?.maxEvents,
        e?.randomOTP,
        e?.memberCode,
        e?.level,
        e?.slabNumber,
        e?.acquisitionType,
        e?.referral,
        e?.referradby,
        e?.maritalStatus,
        e?.clusterCode,
        e?.refClubs,
        e?.firstName,
        e?.lastName,
        e?.cpRef,
        e?.bloodGroup,
        e?.emergperson1,
        e?.emergconntact1,
        e?.emerRelat1,
        e?.emerperson2,
        e?.emerContact2,
        e?.emerRelat2,
        e?.medicalConditions,
        e?.allergies,
        e?.consent,
        e?.birthday,
        e?.trialdays,
        e?.maxchallenges,
        e?.refStudio
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
