import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StudioSequencesRecord extends FirestoreRecord {
  StudioSequencesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "refStudio" field.
  DocumentReference? _refStudio;
  DocumentReference? get refStudio => _refStudio;
  bool hasRefStudio() => _refStudio != null;

  // "studentSeq" field.
  int? _studentSeq;
  int get studentSeq => _studentSeq ?? 0;
  bool hasStudentSeq() => _studentSeq != null;

  // "instructorSeq" field.
  int? _instructorSeq;
  int get instructorSeq => _instructorSeq ?? 0;
  bool hasInstructorSeq() => _instructorSeq != null;

  // "staffSeq" field.
  int? _staffSeq;
  int get staffSeq => _staffSeq ?? 0;
  bool hasStaffSeq() => _staffSeq != null;

  // "branchSeq" field.
  int? _branchSeq;
  int get branchSeq => _branchSeq ?? 0;
  bool hasBranchSeq() => _branchSeq != null;

  // "rulesnumber" field.
  int? _rulesnumber;
  int get rulesnumber => _rulesnumber ?? 0;
  bool hasRulesnumber() => _rulesnumber != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _refStudio = snapshotData['refStudio'] as DocumentReference?;
    _studentSeq = castToType<int>(snapshotData['studentSeq']);
    _instructorSeq = castToType<int>(snapshotData['instructorSeq']);
    _staffSeq = castToType<int>(snapshotData['staffSeq']);
    _branchSeq = castToType<int>(snapshotData['branchSeq']);
    _rulesnumber = castToType<int>(snapshotData['rulesnumber']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('studioSequences')
          : FirebaseFirestore.instance.collectionGroup('studioSequences');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('studioSequences').doc(id);

  static Stream<StudioSequencesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StudioSequencesRecord.fromSnapshot(s));

  static Future<StudioSequencesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StudioSequencesRecord.fromSnapshot(s));

  static StudioSequencesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StudioSequencesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StudioSequencesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StudioSequencesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StudioSequencesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StudioSequencesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStudioSequencesRecordData({
  DocumentReference? refStudio,
  int? studentSeq,
  int? instructorSeq,
  int? staffSeq,
  int? branchSeq,
  int? rulesnumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'refStudio': refStudio,
      'studentSeq': studentSeq,
      'instructorSeq': instructorSeq,
      'staffSeq': staffSeq,
      'branchSeq': branchSeq,
      'rulesnumber': rulesnumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class StudioSequencesRecordDocumentEquality
    implements Equality<StudioSequencesRecord> {
  const StudioSequencesRecordDocumentEquality();

  @override
  bool equals(StudioSequencesRecord? e1, StudioSequencesRecord? e2) {
    return e1?.refStudio == e2?.refStudio &&
        e1?.studentSeq == e2?.studentSeq &&
        e1?.instructorSeq == e2?.instructorSeq &&
        e1?.staffSeq == e2?.staffSeq &&
        e1?.branchSeq == e2?.branchSeq &&
        e1?.rulesnumber == e2?.rulesnumber;
  }

  @override
  int hash(StudioSequencesRecord? e) => const ListEquality().hash([
        e?.refStudio,
        e?.studentSeq,
        e?.instructorSeq,
        e?.staffSeq,
        e?.branchSeq,
        e?.rulesnumber
      ]);

  @override
  bool isValidKey(Object? o) => o is StudioSequencesRecord;
}
