import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClubRecord extends FirestoreRecord {
  ClubRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

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

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "membership" field.
  String? _membership;
  String get membership => _membership ?? '';
  bool hasMembership() => _membership != null;

  // "ownedby" field.
  String? _ownedby;
  String get ownedby => _ownedby ?? '';
  bool hasOwnedby() => _ownedby != null;

  // "superadminRef" field.
  DocumentReference? _superadminRef;
  DocumentReference? get superadminRef => _superadminRef;
  bool hasSuperadminRef() => _superadminRef != null;

  // "superadminName" field.
  String? _superadminName;
  String get superadminName => _superadminName ?? '';
  bool hasSuperadminName() => _superadminName != null;

  // "superadminPic" field.
  String? _superadminPic;
  String get superadminPic => _superadminPic ?? '';
  bool hasSuperadminPic() => _superadminPic != null;

  // "clubLogo" field.
  String? _clubLogo;
  String get clubLogo => _clubLogo ?? '';
  bool hasClubLogo() => _clubLogo != null;

  // "clubCover" field.
  String? _clubCover;
  String get clubCover => _clubCover ?? '';
  bool hasClubCover() => _clubCover != null;

  // "clubTagline" field.
  String? _clubTagline;
  String get clubTagline => _clubTagline ?? '';
  bool hasClubTagline() => _clubTagline != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "refMembers" field.
  List<DocumentReference>? _refMembers;
  List<DocumentReference> get refMembers => _refMembers ?? const [];
  bool hasRefMembers() => _refMembers != null;

  // "refChannelPartners" field.
  List<DocumentReference>? _refChannelPartners;
  List<DocumentReference> get refChannelPartners =>
      _refChannelPartners ?? const [];
  bool hasRefChannelPartners() => _refChannelPartners != null;

  // "refApprovedCP" field.
  List<DocumentReference>? _refApprovedCP;
  List<DocumentReference> get refApprovedCP => _refApprovedCP ?? const [];
  bool hasRefApprovedCP() => _refApprovedCP != null;

  // "refApprovedMembers" field.
  List<DocumentReference>? _refApprovedMembers;
  List<DocumentReference> get refApprovedMembers =>
      _refApprovedMembers ?? const [];
  bool hasRefApprovedMembers() => _refApprovedMembers != null;

  // "adminCP" field.
  String? _adminCP;
  String get adminCP => _adminCP ?? '';
  bool hasAdminCP() => _adminCP != null;

  // "about" field.
  String? _about;
  String get about => _about ?? '';
  bool hasAbout() => _about != null;

  // "contestRunning" field.
  bool? _contestRunning;
  bool get contestRunning => _contestRunning ?? false;
  bool hasContestRunning() => _contestRunning != null;

  // "activemembers" field.
  int? _activemembers;
  int get activemembers => _activemembers ?? 0;
  bool hasActivemembers() => _activemembers != null;

  // "activeGroups" field.
  int? _activeGroups;
  int get activeGroups => _activeGroups ?? 0;
  bool hasActiveGroups() => _activeGroups != null;

  // "activeEvents" field.
  int? _activeEvents;
  int get activeEvents => _activeEvents ?? 0;
  bool hasActiveEvents() => _activeEvents != null;

  // "totalRules" field.
  int? _totalRules;
  int get totalRules => _totalRules ?? 0;
  bool hasTotalRules() => _totalRules != null;

  // "rules" field.
  List<DocumentReference>? _rules;
  List<DocumentReference> get rules => _rules ?? const [];
  bool hasRules() => _rules != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _venue = snapshotData['venue'] as String?;
    _address = snapshotData['address'] as String?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _country = snapshotData['country'] as String?;
    _zipCode = snapshotData['zipCode'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _type = snapshotData['type'] as String?;
    _membership = snapshotData['membership'] as String?;
    _ownedby = snapshotData['ownedby'] as String?;
    _superadminRef = snapshotData['superadminRef'] as DocumentReference?;
    _superadminName = snapshotData['superadminName'] as String?;
    _superadminPic = snapshotData['superadminPic'] as String?;
    _clubLogo = snapshotData['clubLogo'] as String?;
    _clubCover = snapshotData['clubCover'] as String?;
    _clubTagline = snapshotData['clubTagline'] as String?;
    _email = snapshotData['email'] as String?;
    _phone = snapshotData['phone'] as String?;
    _website = snapshotData['website'] as String?;
    _refMembers = getDataList(snapshotData['refMembers']);
    _refChannelPartners = getDataList(snapshotData['refChannelPartners']);
    _refApprovedCP = getDataList(snapshotData['refApprovedCP']);
    _refApprovedMembers = getDataList(snapshotData['refApprovedMembers']);
    _adminCP = snapshotData['adminCP'] as String?;
    _about = snapshotData['about'] as String?;
    _contestRunning = snapshotData['contestRunning'] as bool?;
    _activemembers = castToType<int>(snapshotData['activemembers']);
    _activeGroups = castToType<int>(snapshotData['activeGroups']);
    _activeEvents = castToType<int>(snapshotData['activeEvents']);
    _totalRules = castToType<int>(snapshotData['totalRules']);
    _rules = getDataList(snapshotData['rules']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Club');

  static Stream<ClubRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClubRecord.fromSnapshot(s));

  static Future<ClubRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClubRecord.fromSnapshot(s));

  static ClubRecord fromSnapshot(DocumentSnapshot snapshot) => ClubRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClubRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClubRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClubRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClubRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClubRecordData({
  String? name,
  String? venue,
  String? address,
  String? city,
  String? state,
  String? country,
  String? zipCode,
  LatLng? location,
  DateTime? createdAt,
  String? type,
  String? membership,
  String? ownedby,
  DocumentReference? superadminRef,
  String? superadminName,
  String? superadminPic,
  String? clubLogo,
  String? clubCover,
  String? clubTagline,
  String? email,
  String? phone,
  String? website,
  String? adminCP,
  String? about,
  bool? contestRunning,
  int? activemembers,
  int? activeGroups,
  int? activeEvents,
  int? totalRules,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'venue': venue,
      'address': address,
      'city': city,
      'state': state,
      'country': country,
      'zipCode': zipCode,
      'location': location,
      'createdAt': createdAt,
      'type': type,
      'membership': membership,
      'ownedby': ownedby,
      'superadminRef': superadminRef,
      'superadminName': superadminName,
      'superadminPic': superadminPic,
      'clubLogo': clubLogo,
      'clubCover': clubCover,
      'clubTagline': clubTagline,
      'email': email,
      'phone': phone,
      'website': website,
      'adminCP': adminCP,
      'about': about,
      'contestRunning': contestRunning,
      'activemembers': activemembers,
      'activeGroups': activeGroups,
      'activeEvents': activeEvents,
      'totalRules': totalRules,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClubRecordDocumentEquality implements Equality<ClubRecord> {
  const ClubRecordDocumentEquality();

  @override
  bool equals(ClubRecord? e1, ClubRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.venue == e2?.venue &&
        e1?.address == e2?.address &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.country == e2?.country &&
        e1?.zipCode == e2?.zipCode &&
        e1?.location == e2?.location &&
        e1?.createdAt == e2?.createdAt &&
        e1?.type == e2?.type &&
        e1?.membership == e2?.membership &&
        e1?.ownedby == e2?.ownedby &&
        e1?.superadminRef == e2?.superadminRef &&
        e1?.superadminName == e2?.superadminName &&
        e1?.superadminPic == e2?.superadminPic &&
        e1?.clubLogo == e2?.clubLogo &&
        e1?.clubCover == e2?.clubCover &&
        e1?.clubTagline == e2?.clubTagline &&
        e1?.email == e2?.email &&
        e1?.phone == e2?.phone &&
        e1?.website == e2?.website &&
        listEquality.equals(e1?.refMembers, e2?.refMembers) &&
        listEquality.equals(e1?.refChannelPartners, e2?.refChannelPartners) &&
        listEquality.equals(e1?.refApprovedCP, e2?.refApprovedCP) &&
        listEquality.equals(e1?.refApprovedMembers, e2?.refApprovedMembers) &&
        e1?.adminCP == e2?.adminCP &&
        e1?.about == e2?.about &&
        e1?.contestRunning == e2?.contestRunning &&
        e1?.activemembers == e2?.activemembers &&
        e1?.activeGroups == e2?.activeGroups &&
        e1?.activeEvents == e2?.activeEvents &&
        e1?.totalRules == e2?.totalRules &&
        listEquality.equals(e1?.rules, e2?.rules);
  }

  @override
  int hash(ClubRecord? e) => const ListEquality().hash([
        e?.name,
        e?.venue,
        e?.address,
        e?.city,
        e?.state,
        e?.country,
        e?.zipCode,
        e?.location,
        e?.createdAt,
        e?.type,
        e?.membership,
        e?.ownedby,
        e?.superadminRef,
        e?.superadminName,
        e?.superadminPic,
        e?.clubLogo,
        e?.clubCover,
        e?.clubTagline,
        e?.email,
        e?.phone,
        e?.website,
        e?.refMembers,
        e?.refChannelPartners,
        e?.refApprovedCP,
        e?.refApprovedMembers,
        e?.adminCP,
        e?.about,
        e?.contestRunning,
        e?.activemembers,
        e?.activeGroups,
        e?.activeEvents,
        e?.totalRules,
        e?.rules
      ]);

  @override
  bool isValidKey(Object? o) => o is ClubRecord;
}
