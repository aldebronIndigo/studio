import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationsRecord extends FirestoreRecord {
  NotificationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "refReciever" field.
  DocumentReference? _refReciever;
  DocumentReference? get refReciever => _refReciever;
  bool hasRefReciever() => _refReciever != null;

  // "refSender" field.
  DocumentReference? _refSender;
  DocumentReference? get refSender => _refSender;
  bool hasRefSender() => _refSender != null;

  // "senderName" field.
  String? _senderName;
  String get senderName => _senderName ?? '';
  bool hasSenderName() => _senderName != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "priority" field.
  String? _priority;
  String get priority => _priority ?? '';
  bool hasPriority() => _priority != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _refReciever = snapshotData['refReciever'] as DocumentReference?;
    _refSender = snapshotData['refSender'] as DocumentReference?;
    _senderName = snapshotData['senderName'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _message = snapshotData['message'] as String?;
    _priority = snapshotData['priority'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('notifications')
          : FirebaseFirestore.instance.collectionGroup('notifications');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('notifications').doc(id);

  static Stream<NotificationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationsRecord.fromSnapshot(s));

  static Future<NotificationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationsRecord.fromSnapshot(s));

  static NotificationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationsRecordData({
  DocumentReference? refReciever,
  DocumentReference? refSender,
  String? senderName,
  DateTime? createdAt,
  String? message,
  String? priority,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'refReciever': refReciever,
      'refSender': refSender,
      'senderName': senderName,
      'createdAt': createdAt,
      'message': message,
      'priority': priority,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationsRecordDocumentEquality
    implements Equality<NotificationsRecord> {
  const NotificationsRecordDocumentEquality();

  @override
  bool equals(NotificationsRecord? e1, NotificationsRecord? e2) {
    return e1?.refReciever == e2?.refReciever &&
        e1?.refSender == e2?.refSender &&
        e1?.senderName == e2?.senderName &&
        e1?.createdAt == e2?.createdAt &&
        e1?.message == e2?.message &&
        e1?.priority == e2?.priority;
  }

  @override
  int hash(NotificationsRecord? e) => const ListEquality().hash([
        e?.refReciever,
        e?.refSender,
        e?.senderName,
        e?.createdAt,
        e?.message,
        e?.priority
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationsRecord;
}
