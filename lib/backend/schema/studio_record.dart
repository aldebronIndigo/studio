import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StudioRecord extends FirestoreRecord {
  StudioRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdat" field.
  DateTime? _createdat;
  DateTime? get createdat => _createdat;
  bool hasCreatedat() => _createdat != null;

  // "createdbyRef" field.
  DocumentReference? _createdbyRef;
  DocumentReference? get createdbyRef => _createdbyRef;
  bool hasCreatedbyRef() => _createdbyRef != null;

  // "createdbyName" field.
  String? _createdbyName;
  String get createdbyName => _createdbyName ?? '';
  bool hasCreatedbyName() => _createdbyName != null;

  // "createdbyPic" field.
  String? _createdbyPic;
  String get createdbyPic => _createdbyPic ?? '';
  bool hasCreatedbyPic() => _createdbyPic != null;

  // "studioName" field.
  String? _studioName;
  String get studioName => _studioName ?? '';
  bool hasStudioName() => _studioName != null;

  // "logoImage" field.
  String? _logoImage;
  String get logoImage => _logoImage ?? '';
  bool hasLogoImage() => _logoImage != null;

  // "coverImage" field.
  String? _coverImage;
  String get coverImage => _coverImage ?? '';
  bool hasCoverImage() => _coverImage != null;

  // "taglIne" field.
  String? _taglIne;
  String get taglIne => _taglIne ?? '';
  bool hasTaglIne() => _taglIne != null;

  // "about" field.
  String? _about;
  String get about => _about ?? '';
  bool hasAbout() => _about != null;

  // "registeredVenue" field.
  String? _registeredVenue;
  String get registeredVenue => _registeredVenue ?? '';
  bool hasRegisteredVenue() => _registeredVenue != null;

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

  // "adminRef" field.
  DocumentReference? _adminRef;
  DocumentReference? get adminRef => _adminRef;
  bool hasAdminRef() => _adminRef != null;

  // "adminName" field.
  String? _adminName;
  String get adminName => _adminName ?? '';
  bool hasAdminName() => _adminName != null;

  // "adminPic" field.
  String? _adminPic;
  String get adminPic => _adminPic ?? '';
  bool hasAdminPic() => _adminPic != null;

  // "studioType" field.
  String? _studioType;
  String get studioType => _studioType ?? '';
  bool hasStudioType() => _studioType != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "membership" field.
  String? _membership;
  String get membership => _membership ?? '';
  bool hasMembership() => _membership != null;

  // "phone1" field.
  String? _phone1;
  String get phone1 => _phone1 ?? '';
  bool hasPhone1() => _phone1 != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "refBranches" field.
  List<DocumentReference>? _refBranches;
  List<DocumentReference> get refBranches => _refBranches ?? const [];
  bool hasRefBranches() => _refBranches != null;

  // "extensions" field.
  String? _extensions;
  String get extensions => _extensions ?? '';
  bool hasExtensions() => _extensions != null;

  // "numberCourses" field.
  int? _numberCourses;
  int get numberCourses => _numberCourses ?? 0;
  bool hasNumberCourses() => _numberCourses != null;

  // "numberMembers" field.
  int? _numberMembers;
  int get numberMembers => _numberMembers ?? 0;
  bool hasNumberMembers() => _numberMembers != null;

  // "numberStaff" field.
  int? _numberStaff;
  int get numberStaff => _numberStaff ?? 0;
  bool hasNumberStaff() => _numberStaff != null;

  // "numberInstructors" field.
  int? _numberInstructors;
  int get numberInstructors => _numberInstructors ?? 0;
  bool hasNumberInstructors() => _numberInstructors != null;

  // "totalRules" field.
  int? _totalRules;
  int get totalRules => _totalRules ?? 0;
  bool hasTotalRules() => _totalRules != null;

  // "membersList" field.
  List<DocumentReference>? _membersList;
  List<DocumentReference> get membersList => _membersList ?? const [];
  bool hasMembersList() => _membersList != null;

  // "listStaff" field.
  List<DocumentReference>? _listStaff;
  List<DocumentReference> get listStaff => _listStaff ?? const [];
  bool hasListStaff() => _listStaff != null;

  // "listInstructors" field.
  List<DocumentReference>? _listInstructors;
  List<DocumentReference> get listInstructors => _listInstructors ?? const [];
  bool hasListInstructors() => _listInstructors != null;

  // "subscriptionType" field.
  String? _subscriptionType;
  String get subscriptionType => _subscriptionType ?? '';
  bool hasSubscriptionType() => _subscriptionType != null;

  // "NumberpfPassProduct" field.
  int? _numberpfPassProduct;
  int get numberpfPassProduct => _numberpfPassProduct ?? 0;
  bool hasNumberpfPassProduct() => _numberpfPassProduct != null;

  // "IssuedPassed" field.
  int? _issuedPassed;
  int get issuedPassed => _issuedPassed ?? 0;
  bool hasIssuedPassed() => _issuedPassed != null;

  // "trialEnds" field.
  DateTime? _trialEnds;
  DateTime? get trialEnds => _trialEnds;
  bool hasTrialEnds() => _trialEnds != null;

  // "activeMembers" field.
  List<DocumentReference>? _activeMembers;
  List<DocumentReference> get activeMembers => _activeMembers ?? const [];
  bool hasActiveMembers() => _activeMembers != null;

  // "activeStaff" field.
  List<DocumentReference>? _activeStaff;
  List<DocumentReference> get activeStaff => _activeStaff ?? const [];
  bool hasActiveStaff() => _activeStaff != null;

  void _initializeFields() {
    _createdat = snapshotData['createdat'] as DateTime?;
    _createdbyRef = snapshotData['createdbyRef'] as DocumentReference?;
    _createdbyName = snapshotData['createdbyName'] as String?;
    _createdbyPic = snapshotData['createdbyPic'] as String?;
    _studioName = snapshotData['studioName'] as String?;
    _logoImage = snapshotData['logoImage'] as String?;
    _coverImage = snapshotData['coverImage'] as String?;
    _taglIne = snapshotData['taglIne'] as String?;
    _about = snapshotData['about'] as String?;
    _registeredVenue = snapshotData['registeredVenue'] as String?;
    _address = snapshotData['address'] as String?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _country = snapshotData['country'] as String?;
    _zipCode = snapshotData['zipCode'] as String?;
    _adminRef = snapshotData['adminRef'] as DocumentReference?;
    _adminName = snapshotData['adminName'] as String?;
    _adminPic = snapshotData['adminPic'] as String?;
    _studioType = snapshotData['studioType'] as String?;
    _category = snapshotData['category'] as String?;
    _membership = snapshotData['membership'] as String?;
    _phone1 = snapshotData['phone1'] as String?;
    _email = snapshotData['email'] as String?;
    _website = snapshotData['website'] as String?;
    _refBranches = getDataList(snapshotData['refBranches']);
    _extensions = snapshotData['extensions'] as String?;
    _numberCourses = castToType<int>(snapshotData['numberCourses']);
    _numberMembers = castToType<int>(snapshotData['numberMembers']);
    _numberStaff = castToType<int>(snapshotData['numberStaff']);
    _numberInstructors = castToType<int>(snapshotData['numberInstructors']);
    _totalRules = castToType<int>(snapshotData['totalRules']);
    _membersList = getDataList(snapshotData['membersList']);
    _listStaff = getDataList(snapshotData['listStaff']);
    _listInstructors = getDataList(snapshotData['listInstructors']);
    _subscriptionType = snapshotData['subscriptionType'] as String?;
    _numberpfPassProduct = castToType<int>(snapshotData['NumberpfPassProduct']);
    _issuedPassed = castToType<int>(snapshotData['IssuedPassed']);
    _trialEnds = snapshotData['trialEnds'] as DateTime?;
    _activeMembers = getDataList(snapshotData['activeMembers']);
    _activeStaff = getDataList(snapshotData['activeStaff']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('studio');

  static Stream<StudioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StudioRecord.fromSnapshot(s));

  static Future<StudioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StudioRecord.fromSnapshot(s));

  static StudioRecord fromSnapshot(DocumentSnapshot snapshot) => StudioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StudioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StudioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StudioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StudioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStudioRecordData({
  DateTime? createdat,
  DocumentReference? createdbyRef,
  String? createdbyName,
  String? createdbyPic,
  String? studioName,
  String? logoImage,
  String? coverImage,
  String? taglIne,
  String? about,
  String? registeredVenue,
  String? address,
  String? city,
  String? state,
  String? country,
  String? zipCode,
  DocumentReference? adminRef,
  String? adminName,
  String? adminPic,
  String? studioType,
  String? category,
  String? membership,
  String? phone1,
  String? email,
  String? website,
  String? extensions,
  int? numberCourses,
  int? numberMembers,
  int? numberStaff,
  int? numberInstructors,
  int? totalRules,
  String? subscriptionType,
  int? numberpfPassProduct,
  int? issuedPassed,
  DateTime? trialEnds,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdat': createdat,
      'createdbyRef': createdbyRef,
      'createdbyName': createdbyName,
      'createdbyPic': createdbyPic,
      'studioName': studioName,
      'logoImage': logoImage,
      'coverImage': coverImage,
      'taglIne': taglIne,
      'about': about,
      'registeredVenue': registeredVenue,
      'address': address,
      'city': city,
      'state': state,
      'country': country,
      'zipCode': zipCode,
      'adminRef': adminRef,
      'adminName': adminName,
      'adminPic': adminPic,
      'studioType': studioType,
      'category': category,
      'membership': membership,
      'phone1': phone1,
      'email': email,
      'website': website,
      'extensions': extensions,
      'numberCourses': numberCourses,
      'numberMembers': numberMembers,
      'numberStaff': numberStaff,
      'numberInstructors': numberInstructors,
      'totalRules': totalRules,
      'subscriptionType': subscriptionType,
      'NumberpfPassProduct': numberpfPassProduct,
      'IssuedPassed': issuedPassed,
      'trialEnds': trialEnds,
    }.withoutNulls,
  );

  return firestoreData;
}

class StudioRecordDocumentEquality implements Equality<StudioRecord> {
  const StudioRecordDocumentEquality();

  @override
  bool equals(StudioRecord? e1, StudioRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createdat == e2?.createdat &&
        e1?.createdbyRef == e2?.createdbyRef &&
        e1?.createdbyName == e2?.createdbyName &&
        e1?.createdbyPic == e2?.createdbyPic &&
        e1?.studioName == e2?.studioName &&
        e1?.logoImage == e2?.logoImage &&
        e1?.coverImage == e2?.coverImage &&
        e1?.taglIne == e2?.taglIne &&
        e1?.about == e2?.about &&
        e1?.registeredVenue == e2?.registeredVenue &&
        e1?.address == e2?.address &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.country == e2?.country &&
        e1?.zipCode == e2?.zipCode &&
        e1?.adminRef == e2?.adminRef &&
        e1?.adminName == e2?.adminName &&
        e1?.adminPic == e2?.adminPic &&
        e1?.studioType == e2?.studioType &&
        e1?.category == e2?.category &&
        e1?.membership == e2?.membership &&
        e1?.phone1 == e2?.phone1 &&
        e1?.email == e2?.email &&
        e1?.website == e2?.website &&
        listEquality.equals(e1?.refBranches, e2?.refBranches) &&
        e1?.extensions == e2?.extensions &&
        e1?.numberCourses == e2?.numberCourses &&
        e1?.numberMembers == e2?.numberMembers &&
        e1?.numberStaff == e2?.numberStaff &&
        e1?.numberInstructors == e2?.numberInstructors &&
        e1?.totalRules == e2?.totalRules &&
        listEquality.equals(e1?.membersList, e2?.membersList) &&
        listEquality.equals(e1?.listStaff, e2?.listStaff) &&
        listEquality.equals(e1?.listInstructors, e2?.listInstructors) &&
        e1?.subscriptionType == e2?.subscriptionType &&
        e1?.numberpfPassProduct == e2?.numberpfPassProduct &&
        e1?.issuedPassed == e2?.issuedPassed &&
        e1?.trialEnds == e2?.trialEnds &&
        listEquality.equals(e1?.activeMembers, e2?.activeMembers) &&
        listEquality.equals(e1?.activeStaff, e2?.activeStaff);
  }

  @override
  int hash(StudioRecord? e) => const ListEquality().hash([
        e?.createdat,
        e?.createdbyRef,
        e?.createdbyName,
        e?.createdbyPic,
        e?.studioName,
        e?.logoImage,
        e?.coverImage,
        e?.taglIne,
        e?.about,
        e?.registeredVenue,
        e?.address,
        e?.city,
        e?.state,
        e?.country,
        e?.zipCode,
        e?.adminRef,
        e?.adminName,
        e?.adminPic,
        e?.studioType,
        e?.category,
        e?.membership,
        e?.phone1,
        e?.email,
        e?.website,
        e?.refBranches,
        e?.extensions,
        e?.numberCourses,
        e?.numberMembers,
        e?.numberStaff,
        e?.numberInstructors,
        e?.totalRules,
        e?.membersList,
        e?.listStaff,
        e?.listInstructors,
        e?.subscriptionType,
        e?.numberpfPassProduct,
        e?.issuedPassed,
        e?.trialEnds,
        e?.activeMembers,
        e?.activeStaff
      ]);

  @override
  bool isValidKey(Object? o) => o is StudioRecord;
}
