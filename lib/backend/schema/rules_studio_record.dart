import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RulesStudioRecord extends FirestoreRecord {
  RulesStudioRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

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

  // "refStudio" field.
  DocumentReference? _refStudio;
  DocumentReference? get refStudio => _refStudio;
  bool hasRefStudio() => _refStudio != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _rule = snapshotData['Rule'] as String?;
    _createdby = snapshotData['createdby'] as String?;
    _createdbyRef = snapshotData['createdbyRef'] as DocumentReference?;
    _lastUpdatedat = snapshotData['lastUpdatedat'] as DateTime?;
    _ruleNumber = castToType<int>(snapshotData['ruleNumber']);
    _refStudio = snapshotData['refStudio'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('rulesStudio')
          : FirebaseFirestore.instance.collectionGroup('rulesStudio');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('rulesStudio').doc(id);

  static Stream<RulesStudioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RulesStudioRecord.fromSnapshot(s));

  static Future<RulesStudioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RulesStudioRecord.fromSnapshot(s));

  static RulesStudioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RulesStudioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RulesStudioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RulesStudioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RulesStudioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RulesStudioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRulesStudioRecordData({
  DateTime? createdAt,
  String? rule,
  String? createdby,
  DocumentReference? createdbyRef,
  DateTime? lastUpdatedat,
  int? ruleNumber,
  DocumentReference? refStudio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdAt': createdAt,
      'Rule': rule,
      'createdby': createdby,
      'createdbyRef': createdbyRef,
      'lastUpdatedat': lastUpdatedat,
      'ruleNumber': ruleNumber,
      'refStudio': refStudio,
    }.withoutNulls,
  );

  return firestoreData;
}

class RulesStudioRecordDocumentEquality implements Equality<RulesStudioRecord> {
  const RulesStudioRecordDocumentEquality();

  @override
  bool equals(RulesStudioRecord? e1, RulesStudioRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.rule == e2?.rule &&
        e1?.createdby == e2?.createdby &&
        e1?.createdbyRef == e2?.createdbyRef &&
        e1?.lastUpdatedat == e2?.lastUpdatedat &&
        e1?.ruleNumber == e2?.ruleNumber &&
        e1?.refStudio == e2?.refStudio;
  }

  @override
  int hash(RulesStudioRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.rule,
        e?.createdby,
        e?.createdbyRef,
        e?.lastUpdatedat,
        e?.ruleNumber,
        e?.refStudio
      ]);

  @override
  bool isValidKey(Object? o) => o is RulesStudioRecord;
}
