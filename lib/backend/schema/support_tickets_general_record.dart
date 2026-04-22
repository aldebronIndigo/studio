import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SupportTicketsGeneralRecord extends FirestoreRecord {
  SupportTicketsGeneralRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "refuser" field.
  DocumentReference? _refuser;
  DocumentReference? get refuser => _refuser;
  bool hasRefuser() => _refuser != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "screenshot" field.
  String? _screenshot;
  String get screenshot => _screenshot ?? '';
  bool hasScreenshot() => _screenshot != null;

  // "userEmail" field.
  String? _userEmail;
  String get userEmail => _userEmail ?? '';
  bool hasUserEmail() => _userEmail != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "supportNote" field.
  List<SupportGeneralStruct>? _supportNote;
  List<SupportGeneralStruct> get supportNote => _supportNote ?? const [];
  bool hasSupportNote() => _supportNote != null;

  // "status" field.
  TicketStatus? _status;
  TicketStatus? get status => _status;
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _refuser = snapshotData['refuser'] as DocumentReference?;
    _username = snapshotData['username'] as String?;
    _screenshot = snapshotData['screenshot'] as String?;
    _userEmail = snapshotData['userEmail'] as String?;
    _description = snapshotData['description'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _supportNote = getStructList(
      snapshotData['supportNote'],
      SupportGeneralStruct.fromMap,
    );
    _status = snapshotData['status'] is TicketStatus
        ? snapshotData['status']
        : deserializeEnum<TicketStatus>(snapshotData['status']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('supportTicketsGeneral');

  static Stream<SupportTicketsGeneralRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => SupportTicketsGeneralRecord.fromSnapshot(s));

  static Future<SupportTicketsGeneralRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SupportTicketsGeneralRecord.fromSnapshot(s));

  static SupportTicketsGeneralRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SupportTicketsGeneralRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SupportTicketsGeneralRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SupportTicketsGeneralRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SupportTicketsGeneralRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SupportTicketsGeneralRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSupportTicketsGeneralRecordData({
  DocumentReference? refuser,
  String? username,
  String? screenshot,
  String? userEmail,
  String? description,
  DateTime? createdAt,
  TicketStatus? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'refuser': refuser,
      'username': username,
      'screenshot': screenshot,
      'userEmail': userEmail,
      'description': description,
      'createdAt': createdAt,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class SupportTicketsGeneralRecordDocumentEquality
    implements Equality<SupportTicketsGeneralRecord> {
  const SupportTicketsGeneralRecordDocumentEquality();

  @override
  bool equals(
      SupportTicketsGeneralRecord? e1, SupportTicketsGeneralRecord? e2) {
    const listEquality = ListEquality();
    return e1?.refuser == e2?.refuser &&
        e1?.username == e2?.username &&
        e1?.screenshot == e2?.screenshot &&
        e1?.userEmail == e2?.userEmail &&
        e1?.description == e2?.description &&
        e1?.createdAt == e2?.createdAt &&
        listEquality.equals(e1?.supportNote, e2?.supportNote) &&
        e1?.status == e2?.status;
  }

  @override
  int hash(SupportTicketsGeneralRecord? e) => const ListEquality().hash([
        e?.refuser,
        e?.username,
        e?.screenshot,
        e?.userEmail,
        e?.description,
        e?.createdAt,
        e?.supportNote,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is SupportTicketsGeneralRecord;
}
