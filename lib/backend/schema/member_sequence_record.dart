import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MemberSequenceRecord extends FirestoreRecord {
  MemberSequenceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "MemberSequence" field.
  int? _memberSequence;
  int get memberSequence => _memberSequence ?? 0;
  bool hasMemberSequence() => _memberSequence != null;

  // "CPSequence" field.
  int? _cPSequence;
  int get cPSequence => _cPSequence ?? 0;
  bool hasCPSequence() => _cPSequence != null;

  // "paidMemberSequence" field.
  int? _paidMemberSequence;
  int get paidMemberSequence => _paidMemberSequence ?? 0;
  bool hasPaidMemberSequence() => _paidMemberSequence != null;

  // "CPGroupSeq" field.
  int? _cPGroupSeq;
  int get cPGroupSeq => _cPGroupSeq ?? 0;
  bool hasCPGroupSeq() => _cPGroupSeq != null;

  // "refClub" field.
  DocumentReference? _refClub;
  DocumentReference? get refClub => _refClub;
  bool hasRefClub() => _refClub != null;

  // "CPTeamSeq" field.
  int? _cPTeamSeq;
  int get cPTeamSeq => _cPTeamSeq ?? 0;
  bool hasCPTeamSeq() => _cPTeamSeq != null;

  // "individualSeq" field.
  int? _individualSeq;
  int get individualSeq => _individualSeq ?? 0;
  bool hasIndividualSeq() => _individualSeq != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _memberSequence = castToType<int>(snapshotData['MemberSequence']);
    _cPSequence = castToType<int>(snapshotData['CPSequence']);
    _paidMemberSequence = castToType<int>(snapshotData['paidMemberSequence']);
    _cPGroupSeq = castToType<int>(snapshotData['CPGroupSeq']);
    _refClub = snapshotData['refClub'] as DocumentReference?;
    _cPTeamSeq = castToType<int>(snapshotData['CPTeamSeq']);
    _individualSeq = castToType<int>(snapshotData['individualSeq']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('memberSequence')
          : FirebaseFirestore.instance.collectionGroup('memberSequence');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('memberSequence').doc(id);

  static Stream<MemberSequenceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MemberSequenceRecord.fromSnapshot(s));

  static Future<MemberSequenceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MemberSequenceRecord.fromSnapshot(s));

  static MemberSequenceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MemberSequenceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MemberSequenceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MemberSequenceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MemberSequenceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MemberSequenceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMemberSequenceRecordData({
  int? memberSequence,
  int? cPSequence,
  int? paidMemberSequence,
  int? cPGroupSeq,
  DocumentReference? refClub,
  int? cPTeamSeq,
  int? individualSeq,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'MemberSequence': memberSequence,
      'CPSequence': cPSequence,
      'paidMemberSequence': paidMemberSequence,
      'CPGroupSeq': cPGroupSeq,
      'refClub': refClub,
      'CPTeamSeq': cPTeamSeq,
      'individualSeq': individualSeq,
    }.withoutNulls,
  );

  return firestoreData;
}

class MemberSequenceRecordDocumentEquality
    implements Equality<MemberSequenceRecord> {
  const MemberSequenceRecordDocumentEquality();

  @override
  bool equals(MemberSequenceRecord? e1, MemberSequenceRecord? e2) {
    return e1?.memberSequence == e2?.memberSequence &&
        e1?.cPSequence == e2?.cPSequence &&
        e1?.paidMemberSequence == e2?.paidMemberSequence &&
        e1?.cPGroupSeq == e2?.cPGroupSeq &&
        e1?.refClub == e2?.refClub &&
        e1?.cPTeamSeq == e2?.cPTeamSeq &&
        e1?.individualSeq == e2?.individualSeq;
  }

  @override
  int hash(MemberSequenceRecord? e) => const ListEquality().hash([
        e?.memberSequence,
        e?.cPSequence,
        e?.paidMemberSequence,
        e?.cPGroupSeq,
        e?.refClub,
        e?.cPTeamSeq,
        e?.individualSeq
      ]);

  @override
  bool isValidKey(Object? o) => o is MemberSequenceRecord;
}
