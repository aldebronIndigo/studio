import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClubEventsRecord extends FirestoreRecord {
  ClubEventsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "refClub" field.
  DocumentReference? _refClub;
  DocumentReference? get refClub => _refClub;
  bool hasRefClub() => _refClub != null;

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

  // "status" field.
  EventStatus? _status;
  EventStatus? get status => _status;
  bool hasStatus() => _status != null;

  // "parking" field.
  String? _parking;
  String get parking => _parking ?? '';
  bool hasParking() => _parking != null;

  // "Transferable" field.
  bool? _transferable;
  bool get transferable => _transferable ?? false;
  bool hasTransferable() => _transferable != null;

  // "maxPersons" field.
  int? _maxPersons;
  int get maxPersons => _maxPersons ?? 0;
  bool hasMaxPersons() => _maxPersons != null;

  // "ticketAmount" field.
  double? _ticketAmount;
  double get ticketAmount => _ticketAmount ?? 0.0;
  bool hasTicketAmount() => _ticketAmount != null;

  // "taxes" field.
  double? _taxes;
  double get taxes => _taxes ?? 0.0;
  bool hasTaxes() => _taxes != null;

  // "transactionCharges" field.
  double? _transactionCharges;
  double get transactionCharges => _transactionCharges ?? 0.0;
  bool hasTransactionCharges() => _transactionCharges != null;

  // "guestMembers" field.
  List<GuestsMembersStruct>? _guestMembers;
  List<GuestsMembersStruct> get guestMembers => _guestMembers ?? const [];
  bool hasGuestMembers() => _guestMembers != null;

  // "guestGeneral" field.
  List<GuestGeneralsStruct>? _guestGeneral;
  List<GuestGeneralsStruct> get guestGeneral => _guestGeneral ?? const [];
  bool hasGuestGeneral() => _guestGeneral != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _refClub = snapshotData['refClub'] as DocumentReference?;
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
    _status = snapshotData['status'] is EventStatus
        ? snapshotData['status']
        : deserializeEnum<EventStatus>(snapshotData['status']);
    _parking = snapshotData['parking'] as String?;
    _transferable = snapshotData['Transferable'] as bool?;
    _maxPersons = castToType<int>(snapshotData['maxPersons']);
    _ticketAmount = castToType<double>(snapshotData['ticketAmount']);
    _taxes = castToType<double>(snapshotData['taxes']);
    _transactionCharges =
        castToType<double>(snapshotData['transactionCharges']);
    _guestMembers = getStructList(
      snapshotData['guestMembers'],
      GuestsMembersStruct.fromMap,
    );
    _guestGeneral = getStructList(
      snapshotData['guestGeneral'],
      GuestGeneralsStruct.fromMap,
    );
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('clubEvents')
          : FirebaseFirestore.instance.collectionGroup('clubEvents');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('clubEvents').doc(id);

  static Stream<ClubEventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClubEventsRecord.fromSnapshot(s));

  static Future<ClubEventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClubEventsRecord.fromSnapshot(s));

  static ClubEventsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClubEventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClubEventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClubEventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClubEventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClubEventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClubEventsRecordData({
  DocumentReference? refClub,
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
  EventStatus? status,
  String? parking,
  bool? transferable,
  int? maxPersons,
  double? ticketAmount,
  double? taxes,
  double? transactionCharges,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'refClub': refClub,
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
      'status': status,
      'parking': parking,
      'Transferable': transferable,
      'maxPersons': maxPersons,
      'ticketAmount': ticketAmount,
      'taxes': taxes,
      'transactionCharges': transactionCharges,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClubEventsRecordDocumentEquality implements Equality<ClubEventsRecord> {
  const ClubEventsRecordDocumentEquality();

  @override
  bool equals(ClubEventsRecord? e1, ClubEventsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.refClub == e2?.refClub &&
        e1?.createdbyRef == e2?.createdbyRef &&
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
        e1?.status == e2?.status &&
        e1?.parking == e2?.parking &&
        e1?.transferable == e2?.transferable &&
        e1?.maxPersons == e2?.maxPersons &&
        e1?.ticketAmount == e2?.ticketAmount &&
        e1?.taxes == e2?.taxes &&
        e1?.transactionCharges == e2?.transactionCharges &&
        listEquality.equals(e1?.guestMembers, e2?.guestMembers) &&
        listEquality.equals(e1?.guestGeneral, e2?.guestGeneral);
  }

  @override
  int hash(ClubEventsRecord? e) => const ListEquality().hash([
        e?.refClub,
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
        e?.status,
        e?.parking,
        e?.transferable,
        e?.maxPersons,
        e?.ticketAmount,
        e?.taxes,
        e?.transactionCharges,
        e?.guestMembers,
        e?.guestGeneral
      ]);

  @override
  bool isValidKey(Object? o) => o is ClubEventsRecord;
}
