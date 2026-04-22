import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RulesRecord extends FirestoreRecord {
  RulesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "refClub" field.
  DocumentReference? _refClub;
  DocumentReference? get refClub => _refClub;
  bool hasRefClub() => _refClub != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "Rule" field.
  String? _rule;
  String get rule => _rule ?? '';
  bool hasRule() => _rule != null;

  // "createdby" field.
  String? _createdby;
  String get createdby => _createdby ?? '';
  bool hasCreatedby() => _createdby != null;

  // "createdbyRef" field.
  DocumentReference? _createdbyRef;
  DocumentReference? get createdbyRef => _createdbyRef;
  bool hasCreatedbyRef() => _createdbyRef != null;

  // "lastUpdatedat" field.
  DateTime? _lastUpdatedat;
  DateTime? get lastUpdatedat => _lastUpdatedat;
  bool hasLastUpdatedat() => _lastUpdatedat != null;

  // "ruleNumber" field.
  int? _ruleNumber;
  int get ruleNumber => _ruleNumber ?? 0;
  bool hasRuleNumber() => _ruleNumber != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _refClub = snapshotData['refClub'] as DocumentReference?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _rule = snapshotData['Rule'] as String?;
    _createdby = snapshotData['createdby'] as String?;
    _createdbyRef = snapshotData['createdbyRef'] as DocumentReference?;
    _lastUpdatedat = snapshotData['lastUpdatedat'] as DateTime?;
    _ruleNumber = castToType<int>(snapshotData['ruleNumber']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('rules')
          : FirebaseFirestore.instance.collectionGroup('rules');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('rules').doc(id);

  static Stream<RulesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RulesRecord.fromSnapshot(s));

  static Future<RulesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RulesRecord.fromSnapshot(s));

  static RulesRecord fromSnapshot(DocumentSnapshot snapshot) => RulesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RulesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RulesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RulesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RulesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRulesRecordData({
  DocumentReference? refClub,
  DateTime? createdAt,
  String? rule,
  String? createdby,
  DocumentReference? createdbyRef,
  DateTime? lastUpdatedat,
  int? ruleNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'refClub': refClub,
      'createdAt': createdAt,
      'Rule': rule,
      'createdby': createdby,
      'createdbyRef': createdbyRef,
      'lastUpdatedat': lastUpdatedat,
      'ruleNumber': ruleNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class RulesRecordDocumentEquality implements Equality<RulesRecord> {
  const RulesRecordDocumentEquality();

  @override
  bool equals(RulesRecord? e1, RulesRecord? e2) {
    return e1?.refClub == e2?.refClub &&
        e1?.createdAt == e2?.createdAt &&
        e1?.rule == e2?.rule &&
        e1?.createdby == e2?.createdby &&
        e1?.createdbyRef == e2?.createdbyRef &&
        e1?.lastUpdatedat == e2?.lastUpdatedat &&
        e1?.ruleNumber == e2?.ruleNumber;
  }

  @override
  int hash(RulesRecord? e) => const ListEquality().hash([
        e?.refClub,
        e?.createdAt,
        e?.rule,
        e?.createdby,
        e?.createdbyRef,
        e?.lastUpdatedat,
        e?.ruleNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is RulesRecord;
}
