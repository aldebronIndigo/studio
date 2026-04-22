import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GroupEventsRecord extends FirestoreRecord {
  GroupEventsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

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

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "eventName" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  bool hasEventName() => _eventName != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "eventDate" field.
  DateTime? _eventDate;
  DateTime? get eventDate => _eventDate;
  bool hasEventDate() => _eventDate != null;

  // "eventVenue" field.
  String? _eventVenue;
  String get eventVenue => _eventVenue ?? '';
  bool hasEventVenue() => _eventVenue != null;

  // "eventAddress" field.
  String? _eventAddress;
  String get eventAddress => _eventAddress ?? '';
  bool hasEventAddress() => _eventAddress != null;

  // "eventCity" field.
  String? _eventCity;
  String get eventCity => _eventCity ?? '';
  bool hasEventCity() => _eventCity != null;

  // "eventState" field.
  String? _eventState;
  String get eventState => _eventState ?? '';
  bool hasEventState() => _eventState != null;

  // "eventCountry" field.
  String? _eventCountry;
  String get eventCountry => _eventCountry ?? '';
  bool hasEventCountry() => _eventCountry != null;

  // "eventZipCode" field.
  String? _eventZipCode;
  String get eventZipCode => _eventZipCode ?? '';
  bool hasEventZipCode() => _eventZipCode != null;

  // "eventLocation" field.
  LatLng? _eventLocation;
  LatLng? get eventLocation => _eventLocation;
  bool hasEventLocation() => _eventLocation != null;

  // "eventType" field.
  String? _eventType;
  String get eventType => _eventType ?? '';
  bool hasEventType() => _eventType != null;

  // "entryType" field.
  String? _entryType;
  String get entryType => _entryType ?? '';
  bool hasEntryType() => _entryType != null;

  // "eventCategory" field.
  List<String>? _eventCategory;
  List<String> get eventCategory => _eventCategory ?? const [];
  bool hasEventCategory() => _eventCategory != null;

  // "coverImage" field.
  String? _coverImage;
  String get coverImage => _coverImage ?? '';
  bool hasCoverImage() => _coverImage != null;

  // "contactNumber" field.
  String? _contactNumber;
  String get contactNumber => _contactNumber ?? '';
  bool hasContactNumber() => _contactNumber != null;

  // "refGroup" field.
  DocumentReference? _refGroup;
  DocumentReference? get refGroup => _refGroup;
  bool hasRefGroup() => _refGroup != null;

  // "refClub" field.
  DocumentReference? _refClub;
  DocumentReference? get refClub => _refClub;
  bool hasRefClub() => _refClub != null;

  // "status" field.
  EventStatus? _status;
  EventStatus? get status => _status;
  bool hasStatus() => _status != null;

  // "memberGuest" field.
  List<GuestsMembersStruct>? _memberGuest;
  List<GuestsMembersStruct> get memberGuest => _memberGuest ?? const [];
  bool hasMemberGuest() => _memberGuest != null;

  // "generalGuest" field.
  List<GuestGeneralsStruct>? _generalGuest;
  List<GuestGeneralsStruct> get generalGuest => _generalGuest ?? const [];
  bool hasGeneralGuest() => _generalGuest != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdbyRef = snapshotData['createdbyRef'] as DocumentReference?;
    _createdbyName = snapshotData['createdbyName'] as String?;
    _createdbyPic = snapshotData['createdbyPic'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _eventName = snapshotData['eventName'] as String?;
    _details = snapshotData['details'] as String?;
    _eventDate = snapshotData['eventDate'] as DateTime?;
    _eventVenue = snapshotData['eventVenue'] as String?;
    _eventAddress = snapshotData['eventAddress'] as String?;
    _eventCity = snapshotData['eventCity'] as String?;
    _eventState = snapshotData['eventState'] as String?;
    _eventCountry = snapshotData['eventCountry'] as String?;
    _eventZipCode = snapshotData['eventZipCode'] as String?;
    _eventLocation = snapshotData['eventLocation'] as LatLng?;
    _eventType = snapshotData['eventType'] as String?;
    _entryType = snapshotData['entryType'] as String?;
    _eventCategory = getDataList(snapshotData['eventCategory']);
    _coverImage = snapshotData['coverImage'] as String?;
    _contactNumber = snapshotData['contactNumber'] as String?;
    _refGroup = snapshotData['refGroup'] as DocumentReference?;
    _refClub = snapshotData['refClub'] as DocumentReference?;
    _status = snapshotData['status'] is EventStatus
        ? snapshotData['status']
        : deserializeEnum<EventStatus>(snapshotData['status']);
    _memberGuest = getStructList(
      snapshotData['memberGuest'],
      GuestsMembersStruct.fromMap,
    );
    _generalGuest = getStructList(
      snapshotData['generalGuest'],
      GuestGeneralsStruct.fromMap,
    );
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('groupEvents')
          : FirebaseFirestore.instance.collectionGroup('groupEvents');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('groupEvents').doc(id);

  static Stream<GroupEventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GroupEventsRecord.fromSnapshot(s));

  static Future<GroupEventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GroupEventsRecord.fromSnapshot(s));

  static GroupEventsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GroupEventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GroupEventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GroupEventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GroupEventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GroupEventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGroupEventsRecordData({
  DocumentReference? createdbyRef,
  String? createdbyName,
  String? createdbyPic,
  DateTime? createdAt,
  String? eventName,
  String? details,
  DateTime? eventDate,
  String? eventVenue,
  String? eventAddress,
  String? eventCity,
  String? eventState,
  String? eventCountry,
  String? eventZipCode,
  LatLng? eventLocation,
  String? eventType,
  String? entryType,
  String? coverImage,
  String? contactNumber,
  DocumentReference? refGroup,
  DocumentReference? refClub,
  EventStatus? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdbyRef': createdbyRef,
      'createdbyName': createdbyName,
      'createdbyPic': createdbyPic,
      'createdAt': createdAt,
      'eventName': eventName,
      'details': details,
      'eventDate': eventDate,
      'eventVenue': eventVenue,
      'eventAddress': eventAddress,
      'eventCity': eventCity,
      'eventState': eventState,
      'eventCountry': eventCountry,
      'eventZipCode': eventZipCode,
      'eventLocation': eventLocation,
      'eventType': eventType,
      'entryType': entryType,
      'coverImage': coverImage,
      'contactNumber': contactNumber,
      'refGroup': refGroup,
      'refClub': refClub,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class GroupEventsRecordDocumentEquality implements Equality<GroupEventsRecord> {
  const GroupEventsRecordDocumentEquality();

  @override
  bool equals(GroupEventsRecord? e1, GroupEventsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createdbyRef == e2?.createdbyRef &&
        e1?.createdbyName == e2?.createdbyName &&
        e1?.createdbyPic == e2?.createdbyPic &&
        e1?.createdAt == e2?.createdAt &&
        e1?.eventName == e2?.eventName &&
        e1?.details == e2?.details &&
        e1?.eventDate == e2?.eventDate &&
        e1?.eventVenue == e2?.eventVenue &&
        e1?.eventAddress == e2?.eventAddress &&
        e1?.eventCity == e2?.eventCity &&
        e1?.eventState == e2?.eventState &&
        e1?.eventCountry == e2?.eventCountry &&
        e1?.eventZipCode == e2?.eventZipCode &&
        e1?.eventLocation == e2?.eventLocation &&
        e1?.eventType == e2?.eventType &&
        e1?.entryType == e2?.entryType &&
        listEquality.equals(e1?.eventCategory, e2?.eventCategory) &&
        e1?.coverImage == e2?.coverImage &&
        e1?.contactNumber == e2?.contactNumber &&
        e1?.refGroup == e2?.refGroup &&
        e1?.refClub == e2?.refClub &&
        e1?.status == e2?.status &&
        listEquality.equals(e1?.memberGuest, e2?.memberGuest) &&
        listEquality.equals(e1?.generalGuest, e2?.generalGuest);
  }

  @override
  int hash(GroupEventsRecord? e) => const ListEquality().hash([
        e?.createdbyRef,
        e?.createdbyName,
        e?.createdbyPic,
        e?.createdAt,
        e?.eventName,
        e?.details,
        e?.eventDate,
        e?.eventVenue,
        e?.eventAddress,
        e?.eventCity,
        e?.eventState,
        e?.eventCountry,
        e?.eventZipCode,
        e?.eventLocation,
        e?.eventType,
        e?.entryType,
        e?.eventCategory,
        e?.coverImage,
        e?.contactNumber,
        e?.refGroup,
        e?.refClub,
        e?.status,
        e?.memberGuest,
        e?.generalGuest
      ]);

  @override
  bool isValidKey(Object? o) => o is GroupEventsRecord;
}
