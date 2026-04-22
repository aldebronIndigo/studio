import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SupportTicketsRecord extends FirestoreRecord {
  SupportTicketsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "userEmailID" field.
  String? _userEmailID;
  String get userEmailID => _userEmailID ?? '';
  bool hasUserEmailID() => _userEmailID != null;

  // "screenshot" field.
  String? _screenshot;
  String get screenshot => _screenshot ?? '';
  bool hasScreenshot() => _screenshot != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "lastUpdated" field.
  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _lastUpdated;
  bool hasLastUpdated() => _lastUpdated != null;

  // "addressedTo" field.
  DocumentReference? _addressedTo;
  DocumentReference? get addressedTo => _addressedTo;
  bool hasAddressedTo() => _addressedTo != null;

  // "ticketNote" field.
  List<SupportRepliesStruct>? _ticketNote;
  List<SupportRepliesStruct> get ticketNote => _ticketNote ?? const [];
  bool hasTicketNote() => _ticketNote != null;

  // "status" field.
  TicketStatus? _status;
  TicketStatus? get status => _status;
  bool hasStatus() => _status != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _userName = snapshotData['userName'] as String?;
    _userEmailID = snapshotData['userEmailID'] as String?;
    _screenshot = snapshotData['screenshot'] as String?;
    _description = snapshotData['description'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _lastUpdated = snapshotData['lastUpdated'] as DateTime?;
    _addressedTo = snapshotData['addressedTo'] as DocumentReference?;
    _ticketNote = getStructList(
      snapshotData['ticketNote'],
      SupportRepliesStruct.fromMap,
    );
    _status = snapshotData['status'] is TicketStatus
        ? snapshotData['status']
        : deserializeEnum<TicketStatus>(snapshotData['status']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('supportTickets')
          : FirebaseFirestore.instance.collectionGroup('supportTickets');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('supportTickets').doc(id);

  static Stream<SupportTicketsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SupportTicketsRecord.fromSnapshot(s));

  static Future<SupportTicketsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SupportTicketsRecord.fromSnapshot(s));

  static SupportTicketsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SupportTicketsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SupportTicketsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SupportTicketsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SupportTicketsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SupportTicketsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSupportTicketsRecordData({
  DocumentReference? userRef,
  String? userName,
  String? userEmailID,
  String? screenshot,
  String? description,
  DateTime? createdAt,
  DateTime? lastUpdated,
  DocumentReference? addressedTo,
  TicketStatus? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'userName': userName,
      'userEmailID': userEmailID,
      'screenshot': screenshot,
      'description': description,
      'createdAt': createdAt,
      'lastUpdated': lastUpdated,
      'addressedTo': addressedTo,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class SupportTicketsRecordDocumentEquality
    implements Equality<SupportTicketsRecord> {
  const SupportTicketsRecordDocumentEquality();

  @override
  bool equals(SupportTicketsRecord? e1, SupportTicketsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userRef == e2?.userRef &&
        e1?.userName == e2?.userName &&
        e1?.userEmailID == e2?.userEmailID &&
        e1?.screenshot == e2?.screenshot &&
        e1?.description == e2?.description &&
        e1?.createdAt == e2?.createdAt &&
        e1?.lastUpdated == e2?.lastUpdated &&
        e1?.addressedTo == e2?.addressedTo &&
        listEquality.equals(e1?.ticketNote, e2?.ticketNote) &&
        e1?.status == e2?.status;
  }

  @override
  int hash(SupportTicketsRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.userName,
        e?.userEmailID,
        e?.screenshot,
        e?.description,
        e?.createdAt,
        e?.lastUpdated,
        e?.addressedTo,
        e?.ticketNote,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is SupportTicketsRecord;
}
